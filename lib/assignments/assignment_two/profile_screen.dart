import 'package:flutter/material.dart';
import 'home_screen.dart'; // ensure it imports your User class

class Profile extends StatelessWidget {
  final User user;

  const Profile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user.name)),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(radius: 40, child: Text(user.name[0])),
            const SizedBox(height: 20),
            Text(
              '${user.name} ',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Age:  ${user.age} ',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(' ${user.location} ', style: const TextStyle(fontSize: 16)),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                color: Color.fromARGB(255, 220, 245, 245),
                padding: const EdgeInsets.all(10),
                child: Text(
                  '${user.description},',
                  style: const TextStyle(
                    fontSize: 16,
                    backgroundColor: const Color.fromARGB(255, 220, 245, 245),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 235, 237, 238),
                ),
                onPressed: () {
                  print("Login Clicked");
                },
                child: const Text(
                  "Follow",
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
