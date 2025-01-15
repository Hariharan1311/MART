import 'package:flutter/material.dart';

class Itemcard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double price;

  const Itemcard({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            // Image
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 80,
                width: 80,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Name
            Text(
              name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            // Availability and Cost
            //const SizedBox(height: 5),
            Text(
              "Rs. ${price.toStringAsFixed(2)}",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            // Vertical Divider

            // Availability
            Text(
              "In stock",
              style: TextStyle(
                color: Colors.green,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
