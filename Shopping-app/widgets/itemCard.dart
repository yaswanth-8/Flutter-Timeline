import 'package:flutter/material.dart';
import '../models/product.dart';
// ignore: unused_import
import '../screens/product_detail.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  const ItemCard(this.product, {super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/detail", arguments: product);
      },
      child: Card(
        elevation: 10,
        shadowColor: const Color.fromARGB(255, 90, 90, 90),
        color: const Color.fromARGB(255, 206, 224, 236),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  product.address,
                  fit: BoxFit.cover,
                  height: 130,
                  width: 150,
                ),
              ),
            ),
            Center(child: Text(product.productName)),
          ],
        ),
      ),
    );
  }
}
