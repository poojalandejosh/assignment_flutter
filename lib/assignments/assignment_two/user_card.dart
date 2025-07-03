import 'package:flutter/material.dart';
import 'user_modal.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
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
        leading: CircleAvatar(
          radius: 28,
          child: Text(user.name[0]),
        ),
        title: Text(
          user.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(user.description),
        trailing: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
