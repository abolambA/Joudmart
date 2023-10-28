import 'package:flutter/material.dart';
import 'package:joudmart/screens/arabic%20screens/home_screen.dart';
import 'package:joudmart/screens/english%20screens/about%20us.dart';
import 'package:joudmart/screens/english%20screens/product_screen.dart';
import 'package:joudmart/screens/english%20screens/section1.dart';
import 'package:joudmart/screens/english%20screens/section10.dart';
import 'package:joudmart/screens/english%20screens/section11.dart';
import 'package:joudmart/screens/english%20screens/section12.dart';
import 'package:joudmart/screens/english%20screens/section2.dart';
import 'package:joudmart/screens/english%20screens/section3.dart';
import 'package:joudmart/screens/english%20screens/section4.dart';
import 'package:joudmart/screens/english%20screens/section5.dart';
import 'package:joudmart/screens/english%20screens/section6.dart';
import 'package:joudmart/screens/english%20screens/section7.dart';
import 'package:joudmart/screens/english%20screens/section8.dart';
import 'package:joudmart/screens/english%20screens/section9.dart';
import 'package:joudmart/widgets/Products%20english.dart';
import 'package:joudmart/widgets/added.dart';

//ignore: must_be_immutable
class engHomeScreen extends StatelessWidget {
   final List<String>sectionNames = [ 
     'Our new🤖',
     'Natural oils for hair',
     'Natural honey products 🍯',
     'Natural tea and herbal products 🍵',
     'Luxury fragrance creams of the Levant ✨',
     'Scented solid musk stones 🌹',
     'Nature oils 🌿',
     'face washes',
     'face scrubs',
     'Dokhoun, incense, and scented oud',
     'Nature soap🪴',
     'Shampoo with natural extracts',
   ];
   String searchKeyword = '';

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       drawer:Drawer(
         child:ListView(
           padding:EdgeInsets.zero,
           children: [
             DrawerHeader(
               decoration:BoxDecoration(
                 color:Colors.white,
               ),
               child: Image.asset('assets/logo.png'),
             ),
             ListTile(
               title: const Text(
                 'Home🏠',
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
               ),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => engHomeScreen(),
                   ),
                 );
               },
             ),
             ListTile(
               title: const Text(
                 'Our new🤖',
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
               ),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) =>  engSection1(),
                   ),
                 );
               },
             ),
             ListTile(
               title: const Text(
                 'Natural oils for hair',
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
               ),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) =>  engSection2(),
                   ),
                 );
               },
             ),
             ListTile(
               title: const Text(
                 'Natural honey products 🍯',
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
               ),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) =>  engSection3(),
                   ),
                 );
               },
             ),
             ListTile(
               title: const Text(
                 'Natural tea and herbal products 🍵',
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
               ),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => const engSection4(),
                   ),
                 );
               },
             ),
             ListTile(
               title: const Text(
                 'Luxury fragrance creams of the Levant ✨',
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
               ),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) =>  engSection5(),
                   ),
                 );
               },
             ),
             ListTile(
               title: const Text(
                 'Scented solid musk stones 🌹',
                 style: TextStyle(fontWeight: FontWeight. bold, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const engSection6(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'زيوت الطبيعة 🌿',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
               ),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => const engSection6(),
                   ),
                 );
               },
             ),
             ListTile(
               title: const Text(
                 'Nature oils 🌿',
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
               ),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => const engSection7(),
                   ),
                 );
               },
             ),
             ListTile(
               title: const Text(
                 'face washes',
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
               ),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => const engSection8(),
                   ),
                 );
               },
             ),
             ListTile(
               title: const Text(
                 'face scrubs',
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
               ),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => const engSection9(),
                   ),
                 );
               },
             ),
             ListTile(
               title: const Text(
                 'Dakhoun, incense, and scented oud 💨',
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
               ),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => const engSection10(),
                   ),
                 );
               },
             ),
             ListTile(
               title: const Text(
                 'Nature soap🪴',
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
               ),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => const engSection11(),
                   ),
                 );
               },
             ),
             ListTile(
               title: const Text(
                 'Shampoo with natural extracts',
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
               ),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => const engSection12(),
                   ),
                 );
               },
             ),
             ListTile(
               title: const Text(
                 'Who are we ℹ️',
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
               ),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => const engabout(),
                   ),
                 );
               },
             ),
              
               Align(
    alignment: Alignment.bottomLeft,
    child: ListTile(
      title: Row(
        children: [
          Text(
            'AR🇸🇦',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(width: 8), 
        ],
      ),
      onTap: () {
        Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (context) =>  HomeScreen(),
                     ),
                   );
      },
    ),
  ),
           ],
         ),
       ),
       appBar:AppBar(
         leading:Builder(
           builder: (BuildContext context) {
             return IconButton(
               icon: const Icon(
                 Icons.menu,
                 color:Colors.black,
               ),
               onPressed: () {
                 Scaffold.of(context).openDrawer();
               },
               tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
             );
           },
         ),
         title: Text('joudmart'),
         backgroundColor: Colors.white,
         actions: [
           IconButton(
             icon: Icon(Icons.shopping_cart),
             color: Colors. deepPurple,
             onPressed: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (context) => const Added(),
                     ),
                   );
                 },
           ),
           IconButton(
             icon: Icon(Icons.favorite),
             color:Colors.green,
             onPressed: () {
               // Open wishlist screen or perform wishlist-related actions
             },
           ),
         ],
       ),
       body:SingleChildScrollView(
         child:Column(
           children: [
             Container(
               padding: const EdgeInsets.all(8.0),
               child:Row(
                 children: [
                   Expanded(
                     child:TextField(
                       onChanged: (value) {
                         searchKeyword = value;
                       },
                       decoration:InputDecoration(
                        hintText: 'Search',
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            print('Search: $searchKeyword');
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            for (int sectionIndex = 0;
                sectionIndex < sections.length;
                sectionIndex++)
              Column(
                children: [
                  Container(
                    alignment: Alignment.center, // Align the text to the center
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      sectionNames[sectionIndex], // Display the section name
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center the products
                      children: sections[sectionIndex]
                          .map(
                            (product) => GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ProductScreen(product: product)),
                                );
                                // Open product description screen or perform related actions
                              },
                              child: Container(
                                width: 200,
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 180,
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(product.imageUrl),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      product.name,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'AED ${product.discountPrice.toStringAsFixed(2)}',
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'AED ${product.price.toStringAsFixed(2)}',
                                          style: const TextStyle(
                                            fontSize: 14,
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
