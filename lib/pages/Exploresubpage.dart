import 'package:flutter/material.dart';
import 'package:mart/utilities/horizontalitemcard.dart';

class ExploreSubPage extends StatefulWidget {
  final List<Map<String, dynamic>> type;
  final String title;
  const ExploreSubPage({super.key, required this.type, required this.title});

  @override
  State<ExploreSubPage> createState() => _ExploreSubPageState();
}

class _ExploreSubPageState extends State<ExploreSubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 44, 77),
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        // Adding the back button explicitly
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
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
                itemCount: widget.type.length,
                itemBuilder: (context, index) {
                  final item = widget.type[index];
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
