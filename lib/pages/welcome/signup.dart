import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hackathon/pages/welcome/login.dart';

import '../../functions/firestore.dart';

class Welcome4 extends StatefulWidget {
  const Welcome4({Key? key}) : super(key: key);

  @override
  State<Welcome4> createState() => _Welcome4State();
}

class _Welcome4State extends State<Welcome4> {
  // * Personal information fields
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // * Personal information fields
  final schoolController = TextEditingController();
  final semesterController = TextEditingController();

  // * Topics of interest controller
  final topicsOfInterestController = TextEditingController();

  void _signUp() async {
    // print("Full name: ${fullNameController.text}");
    // print("Email: ${emailController.text}");
    // print("Password: ${passwordController.text}");

    // print("School: ${schoolController.text}");
    // print("Semester: ${semesterController.text}");

    // print("Topics of interest: ${topicsOfInterestController.text}");

    try {
      print("Signup up...");
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      print(credential);

      db.collection("users").add(
        {
          "email": emailController.text,
          "joinDate": DateTime.now(),
          "name": fullNameController.text,
          "profilePic": "",
          "school": schoolController.text,
          "semester": semesterController.text,
          "topicsOfInterest": topicsOfInterestController.text.split(","),
        },
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

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
              child: TextField(
                controller: fullNameController,
                style: const TextStyle(
                  color: Colors.white,
                ),
                onChanged: (e) => print(e),
                decoration: const InputDecoration(
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
              child: TextField(
                controller: emailController,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
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
              child: TextField(
                controller: passwordController,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
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
              child: TextField(
                controller: schoolController,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
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
              child: TextField(
                controller: semesterController,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Semester (e.g. 1)",
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
              child: TextField(
                controller: topicsOfInterestController,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
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
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color(0xFF78ACC9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: TextButton(
                    onPressed: _signUp,
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
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
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
