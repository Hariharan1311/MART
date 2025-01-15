import 'package:flutter/material.dart';

class BooksCatogPage extends StatefulWidget {
  const BooksCatogPage({super.key});

  @override
  State<BooksCatogPage> createState() => _ElectronicsCatogPageState();
}

class _ElectronicsCatogPageState extends State<BooksCatogPage> {
  // Map containing notebook details
  final List<Map<String, String>> notebooks = [
    {
      'name': 'Classmate Notebook',
      'description': '240 pages',
      'price': 'Rs. 60',
      'image': 'https://m.media-amazon.com/images/I/61T7gNByR2L._SX425_.jpg',
    },
    {
      'name': 'Spiral Notebook',
      'description': '300 pages',
      'price': 'Rs. 80',
      'image':
          'https://5.imimg.com/data5/RE/YU/MY-64144134/spiral-notebook-500x500.jpg',
    },
    {
      'name': 'A4 Notebook',
      'description': '500 pages',
      'price': 'Rs. 120',
      'image': 'https://m.media-amazon.com/images/I/71iW0qaXbcL._SL1500_.jpg',
    },
    {
      'name': 'Pocket Notebook',
      'description': '100 pages',
      'price': 'Rs. 40',
      'image':
          'https://cdn11.bigcommerce.com/s-12by2cj20n/images/stencil/1280x1280/products/136/380/pocket-notebook-regular-black_8__05563.1651553752.jpg',
    },
    {
      'name': 'Drawing Notebook',
      'description': '200 pages',
      'price': 'Rs. 150',
      'image': 'https://m.media-amazon.com/images/I/71VPS5lE8DL._SL1500_.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 44, 77),
        title: const Center(
          child: Text(
            'Books',
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
                padding: const EdgeInsets.all(8.0),
                itemCount: notebooks.length,
                itemBuilder: (context, index) {
                  final notebook = notebooks[index];
                  return FavouriteCard(
                    name: notebook['name']!,
                    description: notebook['description']!,
                    price: notebook['price']!,
                    imageUrl: notebook['image']!,
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

class FavouriteCard extends StatelessWidget {
  final String name;
  final String description;
  final String price;
  final String imageUrl;

  const FavouriteCard({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section
            SizedBox(
              height: 100,
              width: 80,
              child: Image.network(
                imageUrl,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 10),
            // Text details section
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis, // Handle long names
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis, // Handle long descriptions
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            // Price and icon section
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
