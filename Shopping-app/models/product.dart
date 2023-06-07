// ignore: unused_import
import 'package:flutter/foundation.dart';

class Product {
  final String productName;
  final int productId;
  final String address;
  const Product(this.productName, this.productId, this.address);
}

const List<Product> products = [
  Product("Watch", 1,
      "https://idestiny.in/wp-content/uploads/2022/09/Apple_Watch_SE_LTE_40mm_Starlight_Aluminum_Starlight_Sport_Band_PDP_Images_Position-1__en-IN.jpg"),
  Product("Camera", 2,
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxLGdlGexTRDFsaNxBssWVNzQiKsb9Qy2big&usqp=CAU"),
  Product("Phone", 3,
      "https://www.apple.com/newsroom/images/product/iphone/standard/Apple-iPhone-14-iPhone-14-Plus-hero-220907_Full-Bleed-Image.jpg.large.jpg"),
  Product("Bag", 4,
      "https://assets.ajio.com/medias/sys_master/root/20221130/ft8Q/638677b8f997ddfdbdaa9bfc/-1117Wx1400H-465363973-indigo-MODEL.jpg"),
  Product("Laptop", 5,
      "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/mbp-spacegray-select-202206?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1664497359481"),
  Product("Fan", 6,
      "https://images.jdmagicbox.com/quickquotes/images_main/polycab-crystal-1200mm-ceiling-fan-pearl-beige-179318678-lzvnh.jpg"),
  Product("Light", 7, "https://m.media-amazon.com/images/I/414eenUo1EL.jpg"),
  Product("Books", 8,
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQejd4f7rHyoy7yp7E-V5LnHgA-VuQ08-cJTA&usqp=CAU"),
];
