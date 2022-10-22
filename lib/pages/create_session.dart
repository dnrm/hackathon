import 'package:flutter/material.dart';

class CreateSession extends StatefulWidget {
  const CreateSession({super.key});

  @override
  State<CreateSession> createState() => _CreateSessionState();
}

class _CreateSessionState extends State<CreateSession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E2E2E),
        title: const Text(
          'Create Session',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            letterSpacing: -1.5,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.check),
        label: const Text(
          "Book",
          style: TextStyle(
            letterSpacing: -1,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 48,
              child: CircleAvatar(
                radius: 44,
                backgroundImage: AssetImage("images/dog.jpg"),
              ),
            ),
            Text.rich(
              TextSpan(
                text: 'Book a session with ',
                children: [
                  TextSpan(
                    text: 'Cute Dog',
                    children: [
                      TextSpan(
                        text: "?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          letterSpacing: -1,
                        ),
                      ),
                    ],
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  letterSpacing: -1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
