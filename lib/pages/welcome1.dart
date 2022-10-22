import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login/pages/login.dart';

class Welcome1 extends StatelessWidget {
  Welcome1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 115),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8), // Border width
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(140), // Image radius
                  child:
                      Image.asset('assets/welcomeimage.jpg', fit: BoxFit.cover),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Welcome to Tutoriffic!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 90),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: Colors.blue),
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
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                      child: FlatButton(
                          child: const Text(
                            'Start',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {})),
                ))),
            const SizedBox(height: 5),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: const Text(
                  "Already have an account ?",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
