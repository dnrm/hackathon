import 'package:flutter/material.dart';

class Ratings extends StatefulWidget {
  const Ratings({super.key});

  @override
  State<Ratings> createState() => _RatingsState();
}

class _RatingsState extends State<Ratings> {
  final ratings = [
    {
      "title": '5 Stars',
      "subject": 'Math V',
      "icon": Icons.star,
      "color": 0xFF78ACC9,
    },
    {
      "title": '4 Stars',
      "subject": "C++ Programming",
      "icon": Icons.star,
      "color": 0xFF8DC978,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Ratings',
          style: TextStyle(
            color: Color(0xFF78ACC9),
            fontWeight: FontWeight.w800,
            fontSize: 18,
            letterSpacing: -1,
          ),
        ),
        const Text(
          'View your ratings per subject',
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
          child: ratings.isEmpty
              ? Container(
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
                            'You have no ratings yet',
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
                    return const Padding(
                      padding: EdgeInsets.only(top: 4, bottom: 4),
                    );
                  },
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
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
                                ratings[index]["color"] as int,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              ratings[index]["icon"] as IconData,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text.rich(
                              TextSpan(
                                text: ratings[index]["title"] as String,
                                children: [
                                  TextSpan(
                                    text: ' - ${ratings[index]["subject"]}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.white70,
                                      letterSpacing: -0.5,
                                    ),
                                  ),
                                ],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white70,
                                  letterSpacing: -0.5,
                                ),
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
