import 'package:flutter/material.dart';
import 'package:hackathon/pages/welcome/login.dart';

class Welcome4 extends StatefulWidget {
  const Welcome4({Key? key}) : super(key: key);

  @override
  State<Welcome4> createState() => _Welcome4State();
}

class _Welcome4State extends State<Welcome4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: const Text(
          "Sign Up",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 28,
            color: Colors.white,
            letterSpacing: -1.5,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Personal information",
              style: TextStyle(
                color: Color(0xFF78ACC9),
                fontWeight: FontWeight.w800,
                fontSize: 18,
                letterSpacing: -1,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFF78ACC9),
                ),
              ),
              child: const TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Full Name",
                  hintStyle: TextStyle(
                    color: Color(
                      0xFF78ACC9,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFF78ACC9),
                ),
              ),
              child: const TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: Color(
                      0xFF78ACC9,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFF78ACC9),
                ),
              ),
              child: const TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Color(
                      0xFF78ACC9,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 35),
            const Text(
              "Academic information",
              style: TextStyle(
                color: Color(0xFF78ACC9),
                fontWeight: FontWeight.w800,
                fontSize: 18,
                letterSpacing: -1,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFF78ACC9),
                ),
              ),
              child: const TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "School",
                  hintStyle: TextStyle(
                    color: Color(
                      0xFF78ACC9,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFF78ACC9),
                ),
              ),
              child: const TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Semester",
                  hintStyle: TextStyle(
                    color: Color(
                      0xFF78ACC9,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 35),
            const Text(
              "Topics of interest",
              style: TextStyle(
                color: Color(0xFF78ACC9),
                fontWeight: FontWeight.w800,
                fontSize: 18,
                letterSpacing: -1,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFF78ACC9),
                ),
              ),
              child: const TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Music, art, computer science...",
                  hintStyle: TextStyle(
                    color: Color(
                      0xFF78ACC9,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
              const SizedBox(width: 5),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFF78ACC9)),
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
                        'Sign up',
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
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 20,
                  child: TextButton(
                    child: const Text(
                      'Log In',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFF78ACC9),
                        letterSpacing: -1.5,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 78,
            ),
          ],
        ),
      ),
    );
  }
}
