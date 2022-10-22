import 'package:flutter/material.dart';
import 'navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hackathon 2022',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xFF181818),
            secondary: const Color(0xFF78ACC9),
          ),
          scaffoldBackgroundColor: const Color(0xFF181818)),
      home: const Navigation(),
    );
  }
}
