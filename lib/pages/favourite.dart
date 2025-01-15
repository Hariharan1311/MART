import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 44, 77),
        title: const Center(
          child: Text(
            'Favourites',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        // Replaced Container with Column
        children: [
          SizedBox(
            height: 2,
            child: Container(
              color: Colors.grey[300],
            ),
          ),
          Expanded(
            // Moved Expanded to be a child of Column
            child: Container(
              color: const Color.fromARGB(255, 3, 70, 121),
              child: ListView(
                children: const [
                  FavouriteCard(), // Assuming FavouriteCard is a widget
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FavouriteCard extends StatelessWidget {
  const FavouriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 100,
                  child: Image.network(
                    "https://e7.pngegg.com/pngimages/35/137/png-clipart-coca-cola-soda-can-coca-cola-soft-drink-safe-beverage-can-sprite-coke-technic-the-cocacola-company-thumbnail.png",
                  ),
                ),
                const SizedBox(width: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Coca Cola',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '250ml',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Row(
              children: [
                Text(
                  "Rs.Price",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
