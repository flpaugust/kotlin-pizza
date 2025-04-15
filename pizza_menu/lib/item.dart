import 'package:flutter/material.dart';
import 'package:pizza_menu/pizza_data.dart';

class Item extends StatelessWidget {
  final Pizza pizza;
  const Item({super.key, required this.pizza});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "images/${pizza.photoName}",
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pizza.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    pizza.ingredients,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "\$${pizza.price}",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
