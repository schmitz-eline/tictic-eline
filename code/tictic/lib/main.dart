import 'package:flutter/material.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/screens/welcome/welcome.dart';

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
      theme: kAppTheme,
      home: Welcome(),
    );
  }
}