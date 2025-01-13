import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 0, 44, 77),
        child: Center(
          child: Text(
            "Favourites",
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
