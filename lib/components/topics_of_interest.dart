import 'package:flutter/material.dart';

class TopicsOfInterest extends StatefulWidget {
  const TopicsOfInterest({super.key});

  @override
  State<TopicsOfInterest> createState() => _TopicsOfInterestState();
}

class _TopicsOfInterestState extends State<TopicsOfInterest> {
  final topicsOfInterest = [
    {
      "title": 'Java Programming',
      "icon": Icons.code,
      "color": 0xFF78ACC9,
    },
    {
      "title": 'Computer Science',
      "icon": Icons.computer_sharp,
      "color": 0xFFD0AC41,
    },
    {
      "title": 'Web Development',
      "icon": Icons.web,
      "color": 0xFF8DC978,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Topics of Interest',
          style: TextStyle(
            color: Color(0xFF78ACC9),
            fontWeight: FontWeight.w800,
            fontSize: 18,
            letterSpacing: -1,
          ),
        ),
        const Text(
          'Where you might need help',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Colors.white70,
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          child: topicsOfInterest.isEmpty
              ? Container(
                  padding: const EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2E2E2E),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image.asset("images/star.png"),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'You have no topicsOfInterest yet',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white70,
                              letterSpacing: -0.5,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              : ListView.separated(
                  separatorBuilder: (context, index) {
                    return const Padding(padding: EdgeInsets.all(4));
                  },
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: topicsOfInterest.length,
                  itemBuilder: (context, index) {
                    final item = topicsOfInterest[index];

                    return Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2E2E2E),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(
                                topicsOfInterest[index]["color"] as int,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              topicsOfInterest[index]["icon"] as IconData,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              topicsOfInterest[index]["title"] as String,
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
        ),
      ],
    );
  }
}
