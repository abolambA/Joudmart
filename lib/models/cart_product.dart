import 'package:joudmart/models/product.dart';
class CartProduct {
  final Product product;
  String name;
  double discountPrice;
  String imageUrl;

  CartProduct(this.product,this.name,this.discountPrice,this.imageUrl);
}
