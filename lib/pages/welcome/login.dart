import 'package:flutter/material.dart';
import 'signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void _logIn() {
    print("Email: ${emailController.text}");
    print("Password: ${passwordController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: const Text(
          "Log In",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 28,
            color: Colors.white,
            letterSpacing: -1.5,
          ),
        ),
        centerTitle: false,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome back!",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 28,
                color: Colors.white,
                letterSpacing: -1.5,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
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
            const SizedBox(
              height: 20,
            ),
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
            const Spacer(),
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color(0xFF78ACC9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: TextButton(
                    onPressed: _logIn,
                    child: const Text(
                      'Login',
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
                      'Sign up',
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
                          builder: (context) => const Welcome4(),
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
