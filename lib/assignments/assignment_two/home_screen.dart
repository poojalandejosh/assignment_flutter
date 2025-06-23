// import 'package:assignment_flutter/assignments/assignment_one/profile_screen.dart';
import 'package:flutter/material.dart';

class User {
  final String name;
  final int age;
  final String description;
  final String location;
  final int experiance;

  User({
    required this.name,
    required this.age,
    required this.description,
    required this.location,
    required this.experiance,
  });
}

final List<User> users = [
  User(
    name: 'Pooja lande',
    age: 26,
    description: 'Flutter developer & coffee lover',
    location: "Pune",
    experiance: 4,
  ),
  User(
    name: 'Kanak Kakad',
    age: 26,

    description: 'Designer and runner',
    location: "Nagpur",
    experiance: 5,
  ),
  User(
    name: 'Aarati Dike',
    age: 26,
    description: 'Photographer & traveler',
    location: "Nashik",
    experiance: 6,
  ),
  User(
    name: 'Minakshi Deshmukh',
    age: 26,
    description: 'Mobile app developer',
    location: "Yavatmal",
    experiance: 3,
  ),
  User(
    name: 'Aarti Dike',
    age: 26,
    description: 'AWS/web developer',
    location: "Amaravati",
    experiance: 7,
  ),
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home screen',
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
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/profile', arguments: user);
              },
              contentPadding: const EdgeInsets.all(12),
              leading: CircleAvatar(radius: 28, child: Text(user.name[0])),
              title: Text(
                user.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(user.description),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {},
              ),
            ),
          );
        },
      ),
    );
  }
}
