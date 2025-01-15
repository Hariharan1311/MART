import 'package:flutter/material.dart';
import 'package:mart/pages/Exploresubpage.dart';

class Categorycard extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;
  Categorycard(
      {super.key,
      required this.icon,
      required this.label,
      required this.index});

//   final List<Map<String, dynamic>> notebooks = [
//   {
//     'name': 'Classmate Notebook',
//     'subtext': '240 pages',
//     'price': 60.0,
//     'url': 'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
//   },
//   {
//     'name': 'Spiral Notebook',
//     'subtext': '300 pages',
//     'price': 80.0,
//     'url': 'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
//   },
//   {
//     'name': 'A4 Notebook',
//     'subtext': '500 pages',
//     'price': 120.0,
//     'url': 'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
//   },
//   {
//     'name': 'Pocket Notebook',
//     'subtext': '100 pages',
//     'price': 40.0,
//     'url': 'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
//   },
//   {
//     'name': 'Drawing Notebook',
//     'subtext': '200 pages',
//     'price': 150.0,
//     'url': 'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
//   },
// ];

// final List<Map<String, dynamic>> electronics = [
//   {
//     'name': 'Electric Kettle',
//     'subtext': '1.5 L capacity',
//     'price': 900.0,
//     'url': 'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
//   },
//   {
//     'name': 'Table Lamp',
//     'subtext': 'LED with adjustable brightness',
//     'price': 400.0,
//     'url': 'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
//   },
//   {
//     'name': 'Extension Cord',
//     'subtext': '6-socket with surge protection',
//     'price': 350.0,
//     'url': 'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
//   },
//   {
//     'name': 'Portable Fan',
//     'subtext': 'Rechargeable battery-powered',
//     'price': 1200.0,
//     'url': 'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
//   },
//   {
//     'name': 'Iron Box',
//     'subtext': '1200W non-stick soleplate',
//     'price': 700.0,
//     'url': 'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
//   },
// ];

  final List<List<Map<String, dynamic>>> categories = [
    [
      {
        'name': 'Classmate Notebook',
        'subtext': '240 pages',
        'price': 60.0,
        'url':
            'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
      },
      {
        'name': 'Spiral Notebook',
        'subtext': '300 pages',
        'price': 80.0,
        'url':
            'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
      },
      {
        'name': 'A4 Notebook',
        'subtext': '500 pages',
        'price': 120.0,
        'url':
            'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
      },
      {
        'name': 'Pocket Notebook',
        'subtext': '100 pages',
        'price': 40.0,
        'url':
            'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
      },
      {
        'name': 'Drawing Notebook',
        'subtext': '200 pages',
        'price': 150.0,
        'url':
            'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
      },
    ],
    [
      {
        'name': 'Electric Kettle',
        'subtext': '1.5 L capacity',
        'price': 900.0,
        'url':
            'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
      },
      {
        'name': 'Table Lamp',
        'subtext': 'LED with adjustable brightness',
        'price': 400.0,
        'url':
            'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
      },
      {
        'name': 'Extension Cord',
        'subtext': '6-socket with surge protection',
        'price': 350.0,
        'url':
            'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
      },
      {
        'name': 'Portable Fan',
        'subtext': 'Rechargeable battery-powered',
        'price': 1200.0,
        'url':
            'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
      },
      {
        'name': 'Iron Box',
        'subtext': '1200W non-stick soleplate',
        'price': 700.0,
        'url':
            'https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg',
      },
    ]
  ];
  final List<String> titles = ["Books", "Electronics"];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print('$label tapped');
        // print(index);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ExploreSubPage(
                      type: categories[index],
                      title: titles[index],
                    )));
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
