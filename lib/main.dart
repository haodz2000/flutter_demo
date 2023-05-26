import 'package:flutter/material.dart';
import 'package:my_app/Screens/Welcome/welcome_screen.dart';
import 'package:my_app/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimary,
        scaffoldBackgroundColor: Colors.white
      ),
      home: const WelcomeScreen(),
    );
  }
}
