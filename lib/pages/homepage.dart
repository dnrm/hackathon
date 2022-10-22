import 'package:flutter/material.dart';
import '../pages/create_session.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final subjects = [];

  @override
  Widget build(BuildContext context) {
    setState(() {
      subjects.clear();
    });
    setState(() {
      subjects.add({
        "title": 'Chemistry III',
        "icon": Icons.science,
        "color": 0xFF78ACC9
      });
      subjects.add({
        "title": 'Physics III',
        "icon": Icons.arrow_downward,
        "color": 0xFF8DC978
      });
      subjects.add({
        "title": 'German',
        "icon": Icons.flag,
        "color": 0xFFDE5353,
      });
    });

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Good Morning',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 30,
                color: Colors.white,
                letterSpacing: -1.5,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Browse sessions',
              style: TextStyle(
                color: Color(0xFF78ACC9),
                fontWeight: FontWeight.w800,
                fontSize: 18,
                letterSpacing: -1,
              ),
            ),
            const Text(
              "Browse sessions based on your interests",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 12,
                letterSpacing: -0.5,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ListView.separated(
              separatorBuilder: (context, index) {
                return const Padding(padding: EdgeInsets.all(4));
              },
              shrinkWrap: true,
              itemCount: subjects.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final item = subjects[index];

                return Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF2E2E2E),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(
                            item["color"] as int,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          item["icon"] as IconData,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          item["title"] as String,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white70,
                            letterSpacing: -0.5,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                "View all",
                style: TextStyle(
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  letterSpacing: -1,
                  color: Colors.white70,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Create session',
              style: TextStyle(
                color: Color(0xFF78ACC9),
                fontWeight: FontWeight.w800,
                fontSize: 18,
                letterSpacing: -1,
              ),
            ),
            const Text(
              "Teach a subject you're good at",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 12,
                letterSpacing: -0.5,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF2E2E2E),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xFF626262),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: const Text(
                        "Create session",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white70,
                          letterSpacing: -0.5,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateSession(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
