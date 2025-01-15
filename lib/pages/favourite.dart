import 'package:flutter/material.dart';
import 'package:mart/utilities/horizontalitemcard.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

final List<Map<String, dynamic>> _favourites = [
  {
    'url': "https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg",
    'name': 'Coca Cola',
    'subtext': "250 ml",
    "price": 30.0,
  },
  {
    'url': "https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg",
    'name': 'Coca Cola',
    'subtext': "250 ml",
    "price": 30.0,
  },
  {
    'url': "https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg",
    'name': 'Coca Cola',
    'subtext': "250 ml",
    "price": 30.0,
  },
  {
    'url': "https://cdn.uengage.io/uploads/18085/image-381513-1685703917.jpeg",
    'name': 'Coca Cola',
    'subtext': "250 ml",
    "price": 30.0,
  },
];

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 44, 77),
        title: Center(
          child: const Text(
            'Favourites',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 2,
            child: Container(
              color: Colors.grey[300],
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 3, 70, 121),
              child: ListView.builder(
                itemCount: _favourites.length,
                itemBuilder: (context, index) {
                  final item = _favourites[index];
                  return Horizontalitemcard(
                    url: item["url"]!,
                    name: item["name"]!,
                    price: item["price"] as double,
                    subtext: item["subtext"]!,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
