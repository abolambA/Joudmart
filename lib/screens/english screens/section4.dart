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
import 'package:joudmart/screens/english%20screens/section5.dart';
import 'package:joudmart/screens/english%20screens/section6.dart';
import 'package:joudmart/screens/english%20screens/section7.dart';
import 'package:joudmart/screens/english%20screens/section8.dart';
import 'package:joudmart/screens/english%20screens/section9.dart';

class engSection4 extends StatefulWidget {
   const engSection4({super.key});

   @override
   State<engSection4> createState() => _engSection4State();
}

class _engSection4State extends State<engSection4> {
 String searchKeyword="Cozmo Robot Cozmo Robot by Anki Mbotranger Robot Astrorobot Robot Gymrobot Kit Max Meccano Robot UBTECH JIMU Robot Cozmo Robot Bag Green Grass Hair Oil Moroccan Argan Oil Green Grass Hair Oil 250ml Original Snake Oil 120ml Original Snake Oil 250ml Hair Oil Super Snake Cobra Hair Oil Black Seed Oil 200ml Ginger Oil 200ml Ginger Honey 250g Pure Honey 250g Ginseng Honey 250g Black Seed Honey 250g Sidr Honey 450g Black Seed Honey 450g Royal Jelly Honey 310g Pure Honey with Black Seed 125 grams of pure honey 125 grams of honey with ginger 125 grams of black seed honey 610 grams of Sidr honey 610 grams of black seed honey 340 grams of pure honey with ginseng 125 grams of slimming honey 310 grams of pure honey 1 kg of pure honey 600 grams of special honey package Green tea with rose Green tea with mint and lemon Green tea with mint and ginger Green tea with mint Green tea with lemon Green tea with cinnamon Green tea with honey Green tea with ginger Pure green tea Green tea with chamomile Weight loss tea with mint Weight loss tea with mixed fruits Weight loss tea with honey Weight loss tea With green apple weight loss tea Green tea with anise Green tea with cardamom Green tea with ginseng Green tea with jasmine, herbal tea, black seed, aromatic jasmine tea, refreshing rose mint tea, exciting hibiscus tea, soothing hibiscus tea, soothing chamomile tea, Perfect Natural Diet Tea, Luxury Rose Cream, Luxury Oud Cream, Luxury Musk Cream, Luxury Mukhallat Cream, Luxury Amber Cream, Luxury Incense Cream, Oud Musk Stone Scented Solid Amber Stone Arabian Musk Scented Stone Jannah Al Firdaws Solid Musk Stone Lettuce Oil 250 ml Oil Sweet almond 250 ml fenugreek oil 250 ml ginger oil 250 ml garlic oil 250 ml borage oil 250 ml grape seed oil 250 ml linseed oil 500 ml cinnamon oil 30 ml nettle oil 30 ml castor oil 30 ml horsetail oil 30 ml oil Cucumber 30 ml Muhallab oil 30 ml Ginger oil 30 ml Sesame oil 30 ml Mastic oil 30 ml Rice bran oil 30 ml Shea butter oil 30 ml Hibiscus oil 30 ml Vanilla oil 30 ml Lavender oil 30 ml Henna oil 30 ml Lettuce oil 30 ml Chamomile oil Blue 30 ml Haram oil 30 ml Nankha oil 30 ml Moisturizing face wash with olive extract Face wash with neem extract for acne Face wash with lemon extract for oil control Face wash with clay extract for deep cleansing Face wash with aloe vera extract for revitalized skin Face wash with cucumber extract for whitening the face Face wash with extract Milk and honey to cleanse the skin Black Seed Face Wash with Herbal Extracts Advanced Black Seed Face Wash Apricot and Walnut Facial Scrub Almond Facial Scrub Smooth Fruit Extract Facial Scrub Pomegranate and Aloe Vera Facial Scrub Herbal Extracts Facial Scrub 5 in 1 Black Seed Facial Scrub Facial Scrub With Argan, Facial Scrub with Macadamia Extract, Oud Difouf Al Majalis Perfumed Oud Bint Al Qamar Perfumed Oud Bint Al Sharq Perfumed Oud Al Wajaha Perfumed Oud Al Maytham Perfumed Oud Al Fawah Perfumed Oud Al Asila Perfumed Oud Al Abha Perfumed Oud Welcome to Sahil Perfumed Oud Princess of the East Perfumed Dokhoon Hanadi Dokhoon Welcome Dokhoon Danat Al Dunya Dokhoon Hanadi Dokhoon Tamim Dokhoon Al-Malooq Dokhoon Emirates Dokhoon Areej Jif Clay Mask Soap Jif Face Lifting Soap Jif Acne Soap Jif Pomegranate Remover Soap Jif Cucumber Soap Jif Snake Soap Jif Milk and Honey Soap Jif Pond Soap Jif Papaya Soap Jif Stretch Marks Removal Soap Lavender Soap Turmeric Sulfur Soap Glycerin Soap - Calthus and Tea Tree Soap Honey and Glycerin Soap Saffron Soap Honey and Glycerin Soap Cucumber and Aloe Vera Soap Papaya Soap with Milk Argan Soap 2-in-1 Shampoo and Conditioner 2-in-1 Shampoo and Conditioner (Anti-Dandruff Full of Vitamins) 2-in-1 Shampoo and Conditioner ( Volume and strength with keratin) 2-in-1 shampoo and conditioner (natural nourishment from roots to ends) 2-in-1 shampoo and conditioner for smooth and silky hair with Moroccan argan oil extract Anti-hair loss shampoo for hijab";   final List<String>sectionNames = [
     'Natural tea and herbal products 🍵',
     'Luxury fragrance creams of the Levant ✨',
     'Scented solid musk stones 🌹',
     'Nature oils 🌿',
     'face washes',
     'face scrubs',
     'Dokhoun, incense, and scented oud',
   ];
   final List<List<Product>>sections = [
     [
       Product(
         id: 36,
         name: 'Green tea with roses 20 sachets',
         price: 21.00,
         discountPrice: 13.00,
         imageUrl: 'assets/green with rose.png',
       ),
       Product(
         id: 37,
         name: 'Green tea with mint and lemon 20 sachets',
         price: 55.00,
         discountPrice: 35.00,
         imageUrl: 'assets/green-mint-lemon.png',
       ),
       Product(
         id: 38,
         name: 'Green tea with mint and ginger 20 sachets',
         price: 20.00,
         discountPrice: 13.00,
         imageUrl: 'assets/mint-ginger-green.png',
       ),
       Product(
         id: 39,
         name: 'Green tea with mint 20 sachets',
         price: 20.00,
         discountPrice: 13.00,
         imageUrl: 'assets/mint-green.png',
       ),
       Product(
         id: 40,
         name: 'Green tea with lemon 20 sachets',
         price: 21.00,
         discountPrice: 13.00,
         imageUrl: 'assets/green-lemon.png',
       ),
       Product(
         id: 41,
         name: 'Green tea with cinnamon 20 sachets',
         price: 21.00,
         discountPrice: 13.00,
         imageUrl: 'assets/green-cinamon.png',
       ),
       Product(
         id: 42,
         name: 'Green tea with honey 20 sachets',
         price: 21.00,
         discountPrice: 13.00,
         imageUrl: 'assets/green-honey.png',
       ),
       Product(
         id: 43,
         name: 'Green tea with ginger 20 sachets',
         price: 21.00,
         discountPrice: 13.00,
         imageUrl: 'assets/green-ginger.png',
       ),
       Product(
         id: 44,
         name: 'Pure green tea 20 sachets',
         price: 21.00,
         discountPrice: 13.00,
         imageUrl: 'assets/pure green.png',
       ),
       Product(
         id: 45,
         name: 'Green tea with chamomile 20 sachets',
         price: 21.00,
         discountPrice: 13.00,
         imageUrl: 'assets/green-babonig.png',
       ),
       Product(
         id: 46,
         name: 'Slimming and intelligence tea with mint mixture, 20 sachets',
         price: 25.00,
         discountPrice: 17.00,
         imageUrl: 'assets/with mint.png',
       ),
       Product(
         id: 47,
         name: 'Slimming and intelligence tea with a mixture of fruits, 20 sachets',
         price: 25.00,
         discountPrice: 17.00,
         imageUrl: 'assets/tea for white losing with fruit mix.png',
       ),
       Product(
         id: 48,
         name: 'Slimming and intelligence tea with honey 20 sachets',
         price: 25.00,
         discountPrice: 17.00,
         imageUrl: 'assets/tea for white losing with honey.png',
       ),
       Product(
         id: 49,
         name: 'Slimming and intelligence tea with green apple, 20 sachets',
         price: 25.00,
         discountPrice: 17.00,
         imageUrl: 'assets/tea for white losing with green apple.png',
       ),
       Product(
         id: 50,
         name: 'Slimming tea to improve weight',
         price: 23.00,
         discountPrice: 15.00,
         imageUrl: 'assets/whight losing tea.png',
       ),
       Product(
         id: 51,
         name: 'Green tea with anise 20 sachets',
         price: 21.00,
         discountPrice: 13.00,
         imageUrl: 'assets/yanson-green-tea.png',
       ),
       Product(
         id: 52,
         name: 'Green tea with cardamom 20 sachets',
         price: 21.00,
         discountPrice: 13.00,
         imageUrl: 'assets/Green-Tea-Cardamom.png',
       ),
       Product(
         id: 53,
         name: 'Green tea with ginseng 20 sachets',
         price: 21.00,
         discountPrice: 13.00,
         imageUrl: 'assets/ginsing tea.png',
      ),
       Product(
         id: 54,
         name: 'Green tea with jasmine 20 sachets',
         price: 21.00,
         discountPrice: 13.00,
         imageUrl: 'assets/green-yasmeen.png',
       ),
       Product(
         id: 55,
         name: 'Raw Miracle Black Seed Herbal Tea',
         price: 28.00,
         discountPrice: 15.00,
         imageUrl: 'assets/miraculous-blackseed.png',
       ),
       Product(
         id: 56,
         name: 'Jasmine Flavored Miracle Raw Herbal Tea',
         price: 28.00,
         discountPrice: 15.00,
         imageUrl: 'assets/aromatic-jasmine.png',
       ),
       Product(
         id: 57,
         name: 'Raw herbal tea flavored with refreshing mint and rose',
         price: 28.00,
         discountPrice: 15.00,
         imageUrl: 'assets/refreshing-peppermint-rose-tea.png',
       ),
       Product(
         id: 58,
         name: 'Raw herbal tea with a wonderful hibiscus flavour',
         price: 28.00,
         discountPrice: 15.00,
         imageUrl: 'assets/exciting-hibiscus-karkadih.png',
       ),
       Product(
         id: 59,
         name: 'soothing chamomile flavored raw herbal tea',
         price: 28.00,
         discountPrice: 15.00,
         imageUrl: 'assets/soothing-chamomile-babonig.png',
       ),
       Product(
         id: 60,
         name: 'Perfect Diet Tea',
         price: 165.00,
         discountPrice: 125.00,
         imageUrl: 'assets/Natural-Perfect-Diet-Tea-2.png',
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
                 'Natural honey products 🍯',
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
                     builder: (context) =>  engSection5(),
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