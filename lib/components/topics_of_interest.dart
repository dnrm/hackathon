import 'package:flutter/material.dart';

class TopicsOfInterest extends StatelessWidget {
  final List<dynamic> topicsOfInterest;

  const TopicsOfInterest({super.key, required this.topicsOfInterest});

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
                              color: const Color(
                                0xFFA0C77C,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              topicsOfInterest[index],
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
