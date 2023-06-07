import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_flutter/models/cart.dart';
import 'package:shopping_flutter/widgets/itemCard.dart';

class DisplayCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Consumer<cartModel>(
        builder: (context, cart, child) {
          if (cart.productsList.isEmpty) {
            return const Center(
              child: Text("No product in cart"),
            );
          } else {
            return ListView.builder(
              itemCount: cart.productsList.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("The products are:"),
                  );
                }
                final product = cart.productsList[index - 1];
                return Column(
                  children: [
                    ItemCard(product),
                    ElevatedButton(
                      onPressed: () {
                        Provider.of<cartModel>(context, listen: false)
                            .remove(product);
                      },
                      child: const Text("remove"),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    ),
                  ],
                );
              },
            );
          }
        },
        child: const Center(
          child: Text("No product in cart"),
        ),
      ),
    );
  }
}
