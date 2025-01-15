import 'package:flutter/material.dart';
import 'package:mart/pages/Explore.dart';
import 'package:mart/pages/favourite.dart';
import 'package:mart/pages/homepage.dart';
import 'package:mart/pages/profile.dart';

class Backbone extends StatefulWidget {
  const Backbone({super.key});

  @override
  State<Backbone> createState() => _BackboneState();
}

class _BackboneState extends State<Backbone> {
  int _selectedindex = 0;
  void _changeindex(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index; // Update the selected index
    });
  }

  final List<Widget> _pages = <Widget>[
    const Homepage(),
    const Explore(),
    const Favourite(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedindex, // Set the current index
        selectedItemColor: Colors.blue, // Selected item color
        unselectedItemColor: Colors.blueGrey[400], // Unselected items color
        onTap: _onItemTapped, // Handle item tap
        backgroundColor: const Color.fromARGB(
            255, 0, 44, 77), // Navigation bar background color
      ),
      body: _pages[_selectedindex],
    );
  }
}
