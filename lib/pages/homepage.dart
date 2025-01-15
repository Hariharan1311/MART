import 'package:flutter/material.dart';
import 'dart:async';

import 'package:mart/utilities/itemcard.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final int _selectedIndex =
      0; // Track the selected index for the bottom navigation bar
  late PageController _pageController; // PageController for the carousel
  late Timer _timer; // Timer for automatic sliding
  int _currentPage = 0; // Current page index

  @override
  void initState() {
    super.initState();
    _pageController = PageController(); // Initialize the PageController
    _startAutoSlide(); // Start the automatic sliding
  }

  @override
  void dispose() {
    _pageController.dispose(); // Dispose the PageController
    _timer.cancel(); // Cancel the timer
    super.dispose();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      _currentPage = (_currentPage + 1) % 3; // Cycle through pages
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            const Color.fromARGB(255, 0, 44, 77), // Make the AppBar transparent
        elevation: 0, // Remove the shadow
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle:
                      const TextStyle(color: Colors.white54), // Hint text color
                  filled: true,
                  fillColor:
                      Colors.white.withOpacity(0.2), // Search bar background
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(30.0), // Rounded corners
                    borderSide: BorderSide.none, // No border
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20.0), // Padding
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white54, // Search icon color
                  ),
                ),
              ),
            ),
            const SizedBox(
                width: 10), // Space between the search bar and cart icon
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white54, // Cart icon color
              ),
              onPressed: () {
                print('Cart icon pressed');
              },
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 44, 77),
      body: ListView(
        children: [
          //const SizedBox(height: 10), // Space for the AppBar
          // Image carousel
          SizedBox(
            height: 200, // Height of the carousel
            child: PageView(
              controller: _pageController,
              children: [
                Container(
                    child: Image.asset('assets/1.jpg', fit: BoxFit.cover)),
                Container(
                    child: Image.asset('assets/2.jpg', fit: BoxFit.cover)),
                Container(
                    child: Image.asset('assets/3.jpg', fit: BoxFit.cover)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Section title
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Hostel",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "See more",
                  style: TextStyle(color: Colors.white70, fontSize: 15),
                ),
              ),
            ],
          ),
          // Horizontal ListView
          SizedBox(
            height: 200, // Height for the horizontal list
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [Itemcard(), Itemcard(), Itemcard()],
            ),
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Hostel",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "See more",
                  style: TextStyle(color: Colors.white70, fontSize: 15),
                ),
              ),
            ],
          ),
          // Horizontal ListView
          SizedBox(
            height: 200, // Height for the horizontal list
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [Itemcard(), Itemcard(), Itemcard()],
            ),
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Hostel",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "See more",
                  style: TextStyle(color: Colors.white70, fontSize: 15),
                ),
              ),
            ],
          ),
          // Horizontal ListView
          SizedBox(
            height: 200, // Height for the horizontal list
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [Itemcard(), Itemcard(), Itemcard()],
            ),
          ),
        ],
      ),
    );
  }
}
