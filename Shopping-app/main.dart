import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_flutter/models/cart.dart';
import 'package:shopping_flutter/screens/display_cart.dart';
import 'package:shopping_flutter/screens/product_detail.dart';
import '../screens/items.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => cartModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        "/": (context) => const Productitems(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        "/detail": (context) => const ProductDetail(),
        "/cart": (context) => DisplayCart(),
      },
    );
  }
}
