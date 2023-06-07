import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/itemCard.dart';

class Productitems extends StatelessWidget {
  const Productitems({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Items"),
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/cart");
              },
              child: const Text("Cart"))
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(2.0),
            child: ItemCard(products[index]),
          );
        },
      ),
    );
  }
}
