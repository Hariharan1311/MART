import 'package:flutter/material.dart';

class Itemcard extends StatelessWidget {
  const Itemcard({super.key});

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
              //Image
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image(
                    image: AssetImage('assets/1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  height: 80,
                  width: 80,
                ),
              ),
              //Name
              Text(
                "Name of item",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              //AVAIL AND COST
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Availability
                  Column(
                    children: [
                      Text("Cost"),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Rate'),
                    ],
                  ),
                  // Vertical Divider
                  Container(
                    height: 20, // Adjust as per your design
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                      width: 20, // Add some spacing
                    ),
                  ),
                  // Cost
                  Center(
                    child: RichText(
                        text: TextSpan(
                            text: "Avail",
                            style: TextStyle(color: Colors.black))),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
