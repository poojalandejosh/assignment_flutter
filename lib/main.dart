import 'package:assignment_flutter/screens/UserList.dart';
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
      home: UserList()
      
    );
  }
}
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hello"),
    );
  }
}

