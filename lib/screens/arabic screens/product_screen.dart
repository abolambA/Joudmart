import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:joudmart/models/product.dart';
import 'package:joudmart/models/cart_product.dart';
import 'package:joudmart/widgets/added.dart';

// ignore: must_be_immutable
class ProductScreen extends StatelessWidget {
  final Product product;

  ProductScreen({required this.product});

  List<CartProduct> cartItems = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Joud Mart'),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.deepPurple,
              onPressed: () {
                // Open the shopping cart screen or navigate to the cart page
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              color: Colors.green,
              onPressed: () {
                // Open the wishlist screen or perform wishlist-related actions
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 266,
                    height: 88,
                    child: Text(
                      product.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Janna LT',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                width: 300,
                height: 300,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage(product.imageUrl),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x5B000000),
                      blurRadius: 50,
                      offset: Offset(0, 16),
                      spreadRadius: 20,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 370,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.discountPrice.toStringAsFixed(2) + '  AED',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF21BB68),
                        fontSize: 24,
                        fontFamily: 'Janna LT',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      product.price.toStringAsFixed(2) + '  AED',
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        color: Color(0xFFBB2121),
                        fontSize: 24,
                        fontFamily: 'Janna LT',
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextButton(
                onPressed: () {
                  // Create a CartProduct and add it to the cart
                  CartProduct cartProduct = CartProduct(
                    product,
                    product.name,
                    product.discountPrice,
                    product.imageUrl,
                  );

                  // Add the cartProduct to the cart
                  cartItems.add(cartProduct);

                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const Added();
                    },
                  );
                },
                child: Container(
                  width: 330,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF21BB68),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 50,
                        offset: Offset(0, 30),
                        spreadRadius: 5,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.cartPlus,
                        color: Colors.white,
                        size: 20,
                      ),
                      Container(
                        width: 156,
                        height: 40,
                        child: Text(
                          'أضف إلى السلة',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'A Jannat LT',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
