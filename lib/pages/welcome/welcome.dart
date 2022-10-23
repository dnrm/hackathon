import 'package:flutter/material.dart';
import './welcome_one.dart';
import './welcome_two.dart';
import './welcome_three.dart';
import 'signup.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List data = [
    const Welcome1(),
    const Welcome2(),
    const Welcome3(),
    const Welcome4(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (_, index) {
          return data[index] as Widget;
        },
      ),
    );
  }
}
