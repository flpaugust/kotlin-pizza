//stl
import 'package:flutter/material.dart';
import 'package:pizza_menu/item.dart';
import 'package:pizza_menu/pizza_data.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pizza Menu"),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Item(pizza: pizzaData[0]),
                  Item(pizza: pizzaData[2]),
                  Item(pizza: pizzaData[3]),
                  Item(pizza: pizzaData[4]),
                  Item(pizza: pizzaData[5]),
                ]))));
  }
}
