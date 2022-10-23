import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final searchController = TextEditingController();

  final user = FirebaseAuth.instance.currentUser;
  final List<dynamic> documents = [];

  Future getDocId() async {
    var userData =
        await FirebaseFirestore.instance.collection("users").get().then(
      (snapshot) {
        snapshot.docs.forEach(
          (document) {
            documents.add(document.data());
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Search',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 28,
              color: Colors.white,
              letterSpacing: -1.5,
            ),
          ),
          // Search bar
          const SizedBox(
            height: 25,
          ),
          Container(
            padding: const EdgeInsets.only(left: 12, right: 12),
            decoration: BoxDecoration(
              color: const Color(0xFF2E2E2E),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              controller: searchController,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.white38,
                ),
                icon: Icon(
                  Icons.search,
                  color: Colors.white38,
                ),
                hintText: "Search for tutors",
                border: InputBorder.none,
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: getDocId(),
              builder: ((context, snapshot) {
                return ListView.builder(
                  itemCount: documents.length,
                  itemBuilder: ((context, index) {
                    return Row(
                      children: [
                        Text(
                          documents[index]["name"],
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                            color: Colors.white,
                            letterSpacing: -1,
                          ),
                        ),
                      ],
                    );
                  }),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
