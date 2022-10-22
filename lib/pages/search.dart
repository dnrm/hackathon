import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
            child: const TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.white38,
                ),
                icon: Icon(
                  Icons.search,
                  color: Colors.white38,
                ),
                hintText: "Search for sessions",
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
