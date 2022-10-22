import 'package:flutter/material.dart';
import 'package:login/pages/login.dart';
import 'package:login/pages/welcome1.dart';
import 'package:login/pages/welcome2.dart';
import 'package:login/pages/welcome3.dart';
import 'package:login/pages/welcome4.dart';
import 'package:login/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: WelcomePage());
  }
}
