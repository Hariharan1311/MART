import 'dart:async'; // Import the async library for Timer
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StartPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int _selectedIndex =
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
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      _currentPage = (_currentPage + 1) % 3; // Cycle through pages
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
    print(_selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make the AppBar transparent
        elevation: 0, // Remove the shadow
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle:
                      TextStyle(color: Colors.white54), // Hint text color
                  filled: true,
                  fillColor:
                      Colors.white.withOpacity(0.2), // Search bar background
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(30.0), // Rounded corners
                    borderSide: BorderSide.none, // No border
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0), // Padding
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white54, // Search icon color
                  ),
                ),
              ),
            ),
            SizedBox(width: 10), // Space between the search bar and cart icon
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white54, // Cart icon color
              ),
              onPressed: () {
                // Add your cart action here
                print('Cart icon pressed');
              },
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 44, 77),
      body: Column(
        children: [
          SizedBox(height: 80), // Space for the AppBar
          // Image carousel
          Container(
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
          Expanded(
            child: Center(
              child: Text(
                'Welcome to the Start Page',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rss_feed),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex, // Set the current index
        selectedItemColor: Colors.blue, // Selected item color
        unselectedItemColor: Colors.blueGrey[400], // Unselected items color
        onTap: _onItemTapped, // Handle item tap
        backgroundColor:
            Color.fromARGB(255, 0, 44, 77), // Navigation bar background color
      ),
    );
  }
}
