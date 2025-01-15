import 'package:flutter/material.dart';
import 'package:mart/pages/Electronics_Catog_page.dart';

class Categorycard extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;
  Categorycard(
      {super.key,
      required this.icon,
      required this.label,
      required this.index});
  List<Widget> _categories = [BooksCatogPage()];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print('$label tapped');
        // print(index);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => _categories[index]));
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
