import 'package:flutter/material.dart';

// * Components
import '../components/ratings.dart';
import '../components/topics_of_interest.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final ratings = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding:
                const EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
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
                backgroundImage: AssetImage("images/toby.png"),
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Toby',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                    color: Colors.white,
                    letterSpacing: -1.5,
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: '5th semester student at ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white70,
                      letterSpacing: -0.5,
                    ),
                    children: [
                      TextSpan(
                        text: "Harvard University",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Ratings(),
                SizedBox(
                  height: 20,
                ),
                TopicsOfInterest()
              ],
            ),
          )
        ],
      ),
    );
  }
}
