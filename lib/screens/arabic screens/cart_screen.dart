import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:joudmart/providers/cart_provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Provide the CartProvider above the CartScreen widget
    return ChangeNotifierProvider(
      create: (context) => CartProvider(), // Initialize CartProvider
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Shopping Cart'),
        ),
        body: Consumer<CartProvider>(
          builder: (context, cartProvider, child) {
            return cartProvider.cart.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 300, // Set width to 100 pixels
                          height: 300, // Set height to 100 pixels
                          child: Image.asset('assets/empty_cart_image.png'), // Image with specified size
                        ),
                        const SizedBox(height: 16), // Added SizedBox for spacing
                        Text(
                          'Your cart is empty',
                          style: TextStyle(
                            fontWeight: FontWeight.bold, // Make text bold
                            fontSize: 30, // Increase font size
                          ),
                        ),
                      ],
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
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
          },
        ),
      ),
    );
  }
}
