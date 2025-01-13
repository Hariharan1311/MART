import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 0, 44, 77),
      child: Center(
        child: Text(
          "Explore",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
