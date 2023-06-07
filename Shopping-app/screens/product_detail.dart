import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_flutter/models/cart.dart';
import 'package:shopping_flutter/widgets/itemCard.dart';
import '../models/product.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product name"),
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.circular(0.0),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ItemCard(args),
              Consumer<cartModel>(
                // ignore: avoid_types_as_parameter_names
                builder: (context, cartModel, child) {
                  return ElevatedButton(
                    onPressed: () {
                      cartModel.addProduct(args);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 12, // Increase the elevation value as desired
                    ),
                    child: Text('Add ${args.productName} to cart'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
