import 'package:assignment_flutter/assignments/assignment_two/navigation_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // ← pass MyApp here
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: NavScreen()
    );
  }
}
