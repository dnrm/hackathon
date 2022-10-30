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
        shadowColor: Colors.transparent,
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
        icon: const Icon(Icons.add),
        label: const Text(
          "Create",
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
              backgroundColor: Colors.white24,
              radius: 48,
              child: Icon(
                Icons.video_call,
                size: 40,
                color: Color(0xFF78ACC9),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "Create a new session?",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  letterSpacing: -1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
