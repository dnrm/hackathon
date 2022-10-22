import 'package:flutter/material.dart';

class Welcome4 extends StatefulWidget {
  Welcome4({Key? key}) : super(key: key);

  @override
  State<Welcome4> createState() => _Welcome4State();
}

class _Welcome4State extends State<Welcome4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 25, right: 10, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Personal information",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey[800],
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Full Name",
                    hintStyle: TextStyle(color: Colors.blue)),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey[800],
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.blue)),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey[800],
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.blue)),
              ),
            ),
            const SizedBox(height: 35),
            const Text(
              "Academic information",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey[800],
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "School",
                    hintStyle: TextStyle(color: Colors.blue)),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey[800],
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Semester",
                    hintStyle: TextStyle(color: Colors.blue)),
              ),
            ),
            const SizedBox(height: 35),
            const Text(
              "Topics of interest",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey[800],
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Music, art, computer science...",
                    hintStyle: TextStyle(color: Colors.blue)),
              ),
            ),
            SizedBox(height: 20),
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
                    borderRadius: BorderRadius.circular(8), color: Colors.blue),
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
                            'Sign up',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {})),
                ))),
          ],
        ),
      ),
    );
  }
}
