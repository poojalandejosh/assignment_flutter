import 'package:assignment_flutter/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          profilePageTitle,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFE0E0E0), // Light grey
                Color(0xFFBDBDBD),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.02),
            ClipOval(
              child: Image.asset(
                "assets/images/profile.jpg",
                width: 100,
                height: 100,
                fit: BoxFit.cover, // ensures the image fills the circle
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                color: Color.fromARGB(255, 220, 245, 245),
                padding: const EdgeInsets.all(10),
                child: Text(
                  profileDescription,
                  style: TextStyle(
                    fontSize: 16,
                    backgroundColor: const Color.fromARGB(255, 220, 245, 245),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 235, 237, 238),
                ),
                onPressed: () {
                  //pressed handler
                },
                child: const Text(
                  btnText,
                  style: TextStyle(color: Color.fromARGB(255, 26, 25, 25)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
