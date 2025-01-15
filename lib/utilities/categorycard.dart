import 'package:flutter/material.dart';
import 'package:mart/pages/Exploresubpage.dart';
import 'package:mart/utilities/categories/Books.dart';
import 'package:mart/utilities/categories/Electronics.dart';
import 'package:mart/utilities/categories/Fashion.dart';
import 'package:mart/utilities/categories/Furniture.dart';
import 'package:mart/utilities/categories/HomeAndKitchen.dart';
import 'package:mart/utilities/categories/Sports.dart';
import 'package:mart/utilities/categories/Toys.dart';

class Categorycard extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;

  // Replace categories with instances of specific classes
  final List<dynamic> categoryClasses = [
    Books(),
    Electronics(),
    Furniture(),
    Fashion(),
    HomeAndKitchen(),
    Sports(),
    Toys()
    // Add more categories here as needed
  ];

  Categorycard({
    super.key,
    required this.icon,
    required this.label,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final dynamic selectedCategory = categoryClasses[index];
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ExploreSubPage(
              type: selectedCategory.items,
              title: selectedCategory.name,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40.0,
              color: const Color.fromARGB(255, 0, 44, 77),
            ),
            const SizedBox(height: 8.0),
            Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Color.fromARGB(255, 0, 44, 77),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
