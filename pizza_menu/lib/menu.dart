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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: _buildPizzas(),
                ),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){}, child: Text('Order now'))
        ],
      ),
      
    );
  }

  List<Item> _buildPizzas() {
    List<Item> lista = [];

    for (var pizza in pizzaData) {
      lista.add(Item(pizza: pizza));
    }
      return lista;
  }
}
