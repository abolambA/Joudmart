// ignore_for_file: depend_on_referenced_packages

import 'package:joudmart/models/product.dart';
import 'package:flutter/material.dart';
import 'package:joudmart/screens/arabic%20screens/home_screen.dart';
import 'package:joudmart/screens/english%20screens/about%20us.dart';
import 'package:joudmart/screens/english%20screens/home_screen.dart';
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

class engSection9 extends StatefulWidget {
   const engSection9({super.key});

   @override
   State<engSection9> createState() => _engSection9State();
}

class _engSection9State extends State<engSection9> {
 String searchKeyword="Cozmo Robot Cozmo Robot by Anki Mbotranger Robot Astrorobot Robot Gymrobot Kit Max Meccano Robot UBTECH JIMU Robot Cozmo Robot Bag Green Grass Hair Oil Moroccan Argan Oil Green Grass Hair Oil 250ml Original Snake Oil 120ml Original Snake Oil 250ml Hair Oil Super Snake Cobra Hair Oil Black Seed Oil 200ml Ginger Oil 200ml Ginger Honey 250g Pure Honey 250g Ginseng Honey 250g Black Seed Honey 250g Sidr Honey 450g Black Seed Honey 450g Royal Jelly Honey 310g Pure Honey with Black Seed 125 grams of pure honey 125 grams of honey with ginger 125 grams of black seed honey 610 grams of Sidr honey 610 grams of black seed honey 340 grams of pure honey with ginseng 125 grams of slimming honey 310 grams of pure honey 1 kg of pure honey 600 grams of special honey package Green tea with rose Green tea with mint and lemon Green tea with mint and ginger Green tea with mint Green tea with lemon Green tea with cinnamon Green tea with honey Green tea with ginger Pure green tea Green tea with chamomile Weight loss tea with mint Weight loss tea with mixed fruits Weight loss tea with honey Weight loss tea With green apple weight loss tea Green tea with anise Green tea with cardamom Green tea with ginseng Green tea with jasmine, herbal tea, black seed, aromatic jasmine tea, refreshing rose mint tea, exciting hibiscus tea, soothing hibiscus tea, soothing chamomile tea, Perfect Natural Diet Tea, Luxury Rose Cream, Luxury Oud Cream, Luxury Musk Cream, Luxury Mukhallat Cream, Luxury Amber Cream, Luxury Incense Cream, Oud Musk Stone Scented Solid Amber Stone Arabian Musk Scented Stone Jannah Al Firdaws Solid Musk Stone Lettuce Oil 250 ml Oil Sweet almond 250 ml fenugreek oil 250 ml ginger oil 250 ml garlic oil 250 ml borage oil 250 ml grape seed oil 250 ml linseed oil 500 ml cinnamon oil 30 ml nettle oil 30 ml castor oil 30 ml horsetail oil 30 ml oil Cucumber 30 ml Muhallab oil 30 ml Ginger oil 30 ml Sesame oil 30 ml Mastic oil 30 ml Rice bran oil 30 ml Shea butter oil 30 ml Hibiscus oil 30 ml Vanilla oil 30 ml Lavender oil 30 ml Henna oil 30 ml Lettuce oil 30 ml Chamomile oil Blue 30 ml Haram oil 30 ml Nankha oil 30 ml Moisturizing face wash with olive extract Face wash with neem extract for acne Face wash with lemon extract for oil control Face wash with clay extract for deep cleansing Face wash with aloe vera extract for revitalized skin Face wash with cucumber extract for whitening the face Face wash with extract Milk and honey to cleanse the skin Black Seed Face Wash with Herbal Extracts Advanced Black Seed Face Wash Apricot and Walnut Facial Scrub Almond Facial Scrub Smooth Fruit Extract Facial Scrub Pomegranate and Aloe Vera Facial Scrub Herbal Extracts Facial Scrub 5 in 1 Black Seed Facial Scrub Facial Scrub With Argan, Facial Scrub with Macadamia Extract, Oud Difouf Al Majalis Perfumed Oud Bint Al Qamar Perfumed Oud Bint Al Sharq Perfumed Oud Al Wajaha Perfumed Oud Al Maytham Perfumed Oud Al Fawah Perfumed Oud Al Asila Perfumed Oud Al Abha Perfumed Oud Welcome to Sahil Perfumed Oud Princess of the East Perfumed Dokhoon Hanadi Dokhoon Welcome Dokhoon Danat Al Dunya Dokhoon Hanadi Dokhoon Tamim Dokhoon Al-Malooq Dokhoon Emirates Dokhoon Areej Jif Clay Mask Soap Jif Face Lifting Soap Jif Acne Soap Jif Pomegranate Remover Soap Jif Cucumber Soap Jif Snake Soap Jif Milk and Honey Soap Jif Pond Soap Jif Papaya Soap Jif Stretch Marks Removal Soap Lavender Soap Turmeric Sulfur Soap Glycerin Soap - Calthus and Tea Tree Soap Honey and Glycerin Soap Saffron Soap Honey and Glycerin Soap Cucumber and Aloe Vera Soap Papaya Soap with Milk Argan Soap 2-in-1 Shampoo and Conditioner 2-in-1 Shampoo and Conditioner (Anti-Dandruff Full of Vitamins) 2-in-1 Shampoo and Conditioner ( Volume and strength with keratin) 2-in-1 shampoo and conditioner (natural nourishment from roots to ends) 2-in-1 shampoo and conditioner for smooth and silky hair with Moroccan argan oil extract Anti-hair loss shampoo for hijab";   final List<String>sectionNames = [
     'face scrubs',
     'Dokhoun, incense, and scented oud',
   ];
   final List<List<Product>>sections = [
     [
       Product(
         id: 108,
         name: 'Facial scrub with apricot and walnut extracts',
         price: 50.00,
         discountPrice: 20.00,
         imageUrl: 'assets/facescrub appricot.png',
       ),
       Product(
         id: 109,
         name: 'Facial scrub with almond extract',
         price: 50.00,
         discountPrice: 25.00,
         imageUrl: 'assets/facescrub almond.png',
       ),
       Product(
         id: 110,
         name: 'Smooth Fruit Facial Scrub',
         price: 50.00,
         discountPrice: 20.00,
         imageUrl: 'assets/facescrub smooth fruit.png',
       ),
       Product(
         id: 111,
         name: 'Facial scrub with pomegranate and aloe vera extracts',
         price: 40.00,
         discountPrice: 20.00,
         imageUrl: 'assets/facescrub cactus.png',
       ),
       Product(
         id: 112,
         name: 'Facial scrub with herbal extracts 5 in 1',
         price: 40.00,
         discountPrice: 20.00,
         imageUrl: 'assets/facescrub herbs.png',
       ),
       Product(
         id: 113,
         name: 'Black Seed Facial Scrub',
         price: 50.00,
         discountPrice: 25.00,
         imageUrl: 'assets/facescrub blackseed.png',
       ),
       Product(
         id: 114,
         name: 'Argan Facial Scrub',
         price: 50.00,
         discountPrice: 22.00,
         imageUrl: 'assets/facescrub aragan.png',
       ),
       Product(
         id: 115,
         name: 'Macadamia Extract Facial Scrub',
         price: 40.00,
         discountPrice: 22.00,
         imageUrl: 'assets/facescrub macadamia.png',
       ),
     ],
   ];

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       drawer:Drawer(
         //Add a ListView to the drawer. This ensures the user can scroll
         // through the options in the drawer if there is not enough vertical
         // space to fit everything.
         child:ListView(
           // Important: Remove any padding from the ListView.
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
                     builder: (context) => engSection1(),
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
                     builder: (context) => engSection2(),
                   ),
                 );
               },
             ),
             ListTile(
               title: const Text(
                 'natural Honey products 🍯',
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
               ),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => const engSection3(),
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
                     builder: (context) => const engSection5(),
                   ),
                 );
               },
             ),
             ListTile(
               title: const Text(
                 'Scented solid musk stones 🌹',
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
                 'Dokhoun, incense, and scented oud',
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
             onPressed: () {},
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
                 sectionIndex <sections.length;
                 sectionIndex++)
               Column(
                 children: [
                   Container(
                     width: 600,
                     alignment: Alignment.center, // Align the text to the center
                     padding: const EdgeInsets.all(8.0),
                     child:Text(
                       sectionNames[sectionIndex], // Display the section name
                       style: const TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ),
                   const SizedBox(height: 5),
                   SingleChildScrollView(
                     scrollDirection: Axis.vertical,
                     child:Column(
                       mainAxisAlignment:
                           MainAxisAlignment.center, //Center the products
                       children:sections[sectionIndex]
                           .map(
                             (product) => GestureDetector(
                               onTap: () {
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(
                                       builder: (context) =>
                                           ProductScreen(product: product)),
                                 );
                               },
                               child:Container(
                                 width: 200,
                                 margin: EdgeInsets.symmetric(horizontal: 8),
                                 child:Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Container(
                                       width: 180,
                                       height: 180,
                                       decoration:BoxDecoration(
                                         borderRadius: BorderRadius.circular(10),
                                         image:DecorationImage(
                                           image: AssetImage(product.imageUrl),
                                           fit:BoxFit.cover,
                                         ),
                                       ),
                                     ),
                                     const SizedBox(height: 5),
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
                  const SizedBox(height: 40),
                ],
              ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
