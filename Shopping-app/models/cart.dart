import 'package:flutter/foundation.dart';
import 'package:shopping_flutter/models/product.dart';

class cartModel extends ChangeNotifier {
  final String name = "Presidio";
  final List<Product> productsList = [];
  void addProduct(Product product) {
    productsList.add(product);
    print('added ${product.productName} to cart');
    notifyListeners();
  }

  void remove(Product product) {
    productsList.remove(product);
    print('removed ${product.productName} from cart');
    notifyListeners();
  }
}
