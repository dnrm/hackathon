import 'package:flutter/material.dart';
import 'package:login/pages/welcome1.dart';
import 'package:login/pages/welcome2.dart';
import 'package:login/pages/welcome3.dart';
import 'package:login/pages/welcome4.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List data = [
    Welcome1(),
    Welcome2(),
    Welcome3(),
    Welcome4(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (_, index) {
            return data[index] as Widget;
          }),
    );
  }
}
