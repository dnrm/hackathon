import 'package:flutter/material.dart';
import './login.dart';

class Welcome1 extends StatelessWidget {
  const Welcome1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 115),
        child: Column(
          children: [
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(8), // Border width
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(
                    140,
                  ), // Image radius
                  child: Image.asset(
                    'images/welcome.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Text(
              'Welcome to Tutoriffic!',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 28,
                color: Colors.white,
                letterSpacing: -1.5,
              ),
            ),
            const Spacer(),
            const SizedBox(height: 90),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFF78ACC9)),
              ),
              const SizedBox(width: 5),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
              ),
              const SizedBox(width: 5),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
              ),
              const SizedBox(width: 5),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
              ),
            ]),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                child: Container(
                  height: 60,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF78ACC9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: TextButton(
                      child: const Text(
                        'Start',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: const Text(
                "Already have an account ?",
                style: TextStyle(
                  color: Color(0xFF78ACC9),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
