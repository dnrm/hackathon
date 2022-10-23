import 'package:flutter/material.dart';

class Welcome3 extends StatefulWidget {
  const Welcome3({Key? key}) : super(key: key);

  @override
  State<Welcome3> createState() => _Welcome2State();
}

class _Welcome2State extends State<Welcome3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 250, right: 25, left: 25),
        child: Column(
          children: [
            const Spacer(),
            const Text(
              "We just need some information",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 28,
                color: Colors.white,
                letterSpacing: -1.5,
              ),
              textAlign: TextAlign.center,
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
                  color: const Color(0xFF78ACC9),
                ),
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
            const SizedBox(
              height: 10,
            ),
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
            const SizedBox(
              height: 78,
            )
          ],
        ),
      ),
    );
  }
}
