import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:joudmart/providers/cart_provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: cartProvider.cart.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/empty_cart_image.png'),
                  const Text('Your cart is empty'),
                ],
              ),
            )
          : ListView.builder(
              itemCount: cartProvider.cart.length,
              itemBuilder: (context, index) {
                final cartProduct = cartProvider.cart[index];
                return ListTile(
                  title: Text(cartProduct.product.name),
                  subtitle: Text('\$${cartProduct.product.price.toStringAsFixed(2)}'),
                  trailing: ElevatedButton(
                    onPressed: () {
                      cartProvider.removeFromCart(cartProduct);
                    },
                    child: const Text('Remove'),
                  ),
                );
              },
            ),
    );
  }
}
