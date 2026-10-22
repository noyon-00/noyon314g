import 'package:flutter/material.dart';
import 'package:noyon314g/Calculator_page.dart';
//import 'Assignment3.dart';
//import 'Calculator_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Calculator());
  }
}
