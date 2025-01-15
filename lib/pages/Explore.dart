import 'package:flutter/material.dart';
import 'package:mart/utilities/categorycard.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  // Dummy categories for the shopping app
  final List<Map<String, dynamic>> categories = [
    {'icon': Icons.book, 'label': 'Books'},
    {'icon': Icons.tv, 'label': 'Electronics'},
    {'icon': Icons.chair, 'label': 'Furniture'},
    {'icon': Icons.style, 'label': 'Fashion'},
    {'icon': Icons.kitchen, 'label': 'Home & Kitchen'},
    {'icon': Icons.sports_basketball, 'label': 'Sports'},
    {'icon': Icons.toys, 'label': 'Toys'},
  ];

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
      body: Container(
        color: const Color.fromARGB(255, 3, 70, 121),
        child: Column(
          children: [
            SizedBox(
              height: 2,
              child: Container(
                color: Colors.white,
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two items per row
                  crossAxisSpacing: 16.0, // Spacing between columns
                  mainAxisSpacing: 16.0, // Spacing between rows
                  childAspectRatio: 3 / 2, // Aspect ratio for grid items
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Categorycard(
                    index: index,
                    icon: categories[index]['icon'],
                    label: categories[index]['label'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
