import 'package:assignment_flutter/screens/ecommerceApp/screens/listing_screen.dart';
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
      home: ListingScreen()
      
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

