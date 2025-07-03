import 'package:assignment_flutter/assignments/assignment_two/profile_screen.dart';
import 'package:assignment_flutter/assignments/assignment_two/home_screen.dart';
import 'package:assignment_flutter/assignments/assignment_two/user_modal.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => AppNavigation();
}

class AppNavigation extends State<NavScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => const Home());
          case '/profile':
            final user = settings.arguments as User;
            return MaterialPageRoute(builder: (_) => Profile(user: user));
          default:
            return MaterialPageRoute(builder: (_) => const Home());
        }
      },
    );
  }
}
