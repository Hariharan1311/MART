import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 0, 44, 77),
        child: Center(
          child: Text(
            "Profile",
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
