import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// * Components
import '../components/ratings.dart';
import '../components/topics_of_interest.dart';
import '../pages/profile_actions.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final ratings = [];
  final user = FirebaseAuth.instance.currentUser;
  var userData = {};

  List<String> docIDs = [];

  Future getDocId() async {
    var userData = await FirebaseFirestore.instance
        .collection("users")
        .where("email", isEqualTo: user!.email)
        .get()
        .then((value) {
      setState(() {
        this.userData = value.docs[0].data();
      });
    });
  }

  @override
  void initState() {
    getDocId();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          right: 10,
          left: 10,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(
                  top: 15, bottom: 15, left: 15, right: 15),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 48,
                child: CircleAvatar(
                  radius: 44,
                  backgroundImage: AssetImage(
                    "images/avatar.jpg",
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 15, left: 15, right: 15, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userData["name"] ?? "Loading...",
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                      color: Colors.white,
                      letterSpacing: -1.5,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: '5th semester student at ',
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white70,
                        letterSpacing: -0.5,
                      ),
                      children: [
                        TextSpan(
                          text: userData["school"] ?? "Loading...",
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10, left: 15, right: 15, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopicsOfInterest(
                    topicsOfInterest: userData["topicsOfInterest"] ?? [],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ProfileActions()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
