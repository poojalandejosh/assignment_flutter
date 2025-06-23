import 'package:flutter/material.dart';
import 'package:assignment_flutter/assignments/assignment_one/profile_screen.dart';

void main() {
  runApp(const MyApp()); // ← pass MyApp here
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Profile()
      
    );
  }
}
