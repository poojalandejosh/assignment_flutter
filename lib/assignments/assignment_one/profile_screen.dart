import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile Page',
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
            const SizedBox(height: 20),
            ClipOval(
              child: Image.asset(
                'assets/images/profile.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.cover, // ensures the image fills the circle
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Pooja Lande",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                color: Color.fromARGB(255, 220, 245, 245),
                 padding: const EdgeInsets.all(10),
                child: Text(
                  "Experienced and passionate front-end and cross-platform mobile developer with over 4.5+ years of expertise in building scalable, high-performance applications using React Native, React.js, and Flutter. Proven ability to design, develop, and deliver elegant UI/UX-driven mobile apps and responsive web interfaces across iOS, Android, and web platforms Skilled in integrating RESTful APIs, handling state management (Redux, Provider, Bloc), optimizing performance, writing reusable components, and ensuring pixel-perfect UI across devices.",
                  style: TextStyle(
                    fontSize: 16,
                    backgroundColor: const Color.fromARGB(255, 220, 245, 245),
                  ),
                  textAlign: TextAlign.start,
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
