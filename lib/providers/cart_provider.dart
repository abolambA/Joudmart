import 'package:flutter/material.dart';
import 'package:joudmart/models/cart_product.dart';

class CartProvider with ChangeNotifier {
  List<CartProduct> _cart = [];

  List<CartProduct> get cart => _cart;

  void addToCart(CartProduct cartProduct) {
    _cart.add(cartProduct);
    notifyListeners();
  }

  void removeFromCart(CartProduct cartProduct) {
    _cart.remove(cartProduct);
    notifyListeners();
  }
}
