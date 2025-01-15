import 'package:flutter/material.dart';
import 'package:mart/pages/Exploresubpage.dart';
import 'package:mart/utilities/categories/Books.dart';
import 'package:mart/utilities/categories/Electronics.dart';
import 'dart:async';
import 'package:mart/utilities/itemcard.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late PageController _pageController; // PageController for the carousel
  late Timer _timer; // Timer for automatic sliding
  int _currentPage = 0; // Current page index

  final electronics = Electronics(); // Items for Electronics category
  final books = Books(); // Items for Books category

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
        backgroundColor: const Color.fromARGB(255, 0, 44, 77),
        elevation: 0,
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: const TextStyle(color: Colors.white54),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white54,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white54,
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
          // Image carousel
          SizedBox(
            height: 200,
            child: PageView(
              controller: _pageController,
              children: [
                Container(
                  child: Image.asset('assets/1.jpg', fit: BoxFit.cover),
                ),
                Container(
                  child: Image.asset('assets/2.jpg', fit: BoxFit.cover),
                ),
                Container(
                  child: Image.asset('assets/3.jpg', fit: BoxFit.cover),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Books Section
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Books",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExploreSubPage(
                          type: books.items,
                          title: "Books",
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    "See more",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: books.items.length,
              itemBuilder: (context, index) {
                final item = books.items[index];
                return Itemcard(
                  name: item['name'],
                  imageUrl: item['url'],
                  price: item['price'],
                );
              },
            ),
          ),
          const SizedBox(height: 10),

          // Electronics Section
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Electronics",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExploreSubPage(
                          type: electronics.items,
                          title: "Electronics",
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    "See more",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: electronics.items.length,
              itemBuilder: (context, index) {
                final item = electronics.items[index];
                return Itemcard(
                  name: item['name'],
                  imageUrl: item['url'],
                  price: item['price'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
