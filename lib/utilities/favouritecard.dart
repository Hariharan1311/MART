import 'package:flutter/material.dart';

class Favouritecard extends StatelessWidget {
  const Favouritecard({super.key});

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
                      "https://e7.pngegg.com/pngimages/35/137/png-clipart-coca-cola-soda-can-coca-cola-soft-drink-safe-beverage-can-sprite-coke-technic-the-cocacola-company-thumbnail.png"),
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
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '250ml',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
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
            )
          ],
        ),
      ),
    );
  }
}
