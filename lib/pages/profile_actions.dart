import 'package:flutter/material.dart';

// * Auth functions
import '../functions/sign_out.dart';

class ProfileActions extends StatefulWidget {
  const ProfileActions({super.key});

  @override
  State<ProfileActions> createState() => _ProfileActionsState();
}

class _ProfileActionsState extends State<ProfileActions> {
  final profileActions = [
    {
      "title": 'Sign Out',
      "icon": Icons.logout,
      "color": 0xFFC66B74,
      "action": signOut
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Settings',
          style: TextStyle(
            color: Color(0xFF78ACC9),
            fontWeight: FontWeight.w800,
            fontSize: 18,
            letterSpacing: -1,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const Padding(padding: EdgeInsets.all(4));
            },
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: profileActions.length,
            itemBuilder: (context, index) {
              final item = profileActions[index];

              return Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFF2E2E2E),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: GestureDetector(
                  onTap: profileActions[index]["action"] as void Function(),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(
                            profileActions[index]["color"] as int,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          profileActions[index]["icon"] as IconData,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          profileActions[index]["title"] as String,
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
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
