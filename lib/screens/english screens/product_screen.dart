import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:joudmart/models/product.dart';
import 'package:joudmart/widgets/added.dart';

//ignore: must_be_immutable
class ProductScreen extends StatelessWidget {
 String searchKeyword="Cozmo Robot Cozmo Robot by Anki Mbotranger Robot Astrorobot Robot Gymrobot Kit Max Meccano Robot UBTECH JIMU Robot Cozmo Robot Bag Green Grass Hair Oil Moroccan Argan Oil Green Grass Hair Oil 250ml Original Snake Oil 120ml Original Snake Oil 250ml Hair Oil Super Snake Cobra Hair Oil Black Seed Oil 200ml Ginger Oil 200ml Ginger Honey 250g Pure Honey 250g Ginseng Honey 250g Black Seed Honey 250g Sidr Honey 450g Black Seed Honey 450g Royal Jelly Honey 310g Pure Honey with Black Seed 125 grams of pure honey 125 grams of honey with ginger 125 grams of black seed honey 610 grams of Sidr honey 610 grams of black seed honey 340 grams of pure honey with ginseng 125 grams of slimming honey 310 grams of pure honey 1 kg of pure honey 600 grams of special honey package Green tea with rose Green tea with mint and lemon Green tea with mint and ginger Green tea with mint Green tea with lemon Green tea with cinnamon Green tea with honey Green tea with ginger Pure green tea Green tea with chamomile Weight loss tea with mint Weight loss tea with mixed fruits Weight loss tea with honey Weight loss tea With green apple weight loss tea Green tea with anise Green tea with cardamom Green tea with ginseng Green tea with jasmine, herbal tea, black seed, aromatic jasmine tea, refreshing rose mint tea, exciting hibiscus tea, soothing hibiscus tea, soothing chamomile tea, Perfect Natural Diet Tea, Luxury Rose Cream, Luxury Oud Cream, Luxury Musk Cream, Luxury Mukhallat Cream, Luxury Amber Cream, Luxury Incense Cream, Oud Musk Stone Scented Solid Amber Stone Arabian Musk Scented Stone Jannah Al Firdaws Solid Musk Stone Lettuce Oil 250 ml Oil Sweet almond 250 ml fenugreek oil 250 ml ginger oil 250 ml garlic oil 250 ml borage oil 250 ml grape seed oil 250 ml linseed oil 500 ml cinnamon oil 30 ml nettle oil 30 ml castor oil 30 ml horsetail oil 30 ml oil Cucumber 30 ml Muhallab oil 30 ml Ginger oil 30 ml Sesame oil 30 ml Mastic oil 30 ml Rice bran oil 30 ml Shea butter oil 30 ml Hibiscus oil 30 ml Vanilla oil 30 ml Lavender oil 30 ml Henna oil 30 ml Lettuce oil 30 ml Chamomile oil Blue 30 ml Haram oil 30 ml Nankha oil 30 ml Moisturizing face wash with olive extract Face wash with neem extract for acne Face wash with lemon extract for oil control Face wash with clay extract for deep cleansing Face wash with aloe vera extract for revitalized skin Face wash with cucumber extract for whitening the face Face wash with extract Milk and honey to cleanse the skin Black Seed Face Wash with Herbal Extracts Advanced Black Seed Face Wash Apricot and Walnut Facial Scrub Almond Facial Scrub Smooth Fruit Extract Facial Scrub Pomegranate and Aloe Vera Facial Scrub Herbal Extracts Facial Scrub 5 in 1 Black Seed Facial Scrub Facial Scrub With Argan, Facial Scrub with Macadamia Extract, Oud Difouf Al Majalis Perfumed Oud Bint Al Qamar Perfumed Oud Bint Al Sharq Perfumed Oud Al Wajaha Perfumed Oud Al Maytham Perfumed Oud Al Fawah Perfumed Oud Al Asila Perfumed Oud Al Abha Perfumed Oud Welcome to Sahil Perfumed Oud Princess of the East Perfumed Dokhoon Hanadi Dokhoon Welcome Dokhoon Danat Al Dunya Dokhoon Hanadi Dokhoon Tamim Dokhoon Al-Malooq Dokhoon Emirates Dokhoon Areej Jif Clay Mask Soap Jif Face Lifting Soap Jif Acne Soap Jif Pomegranate Remover Soap Jif Cucumber Soap Jif Snake Soap Jif Milk and Honey Soap Jif Pond Soap Jif Papaya Soap Jif Stretch Marks Removal Soap Lavender Soap Turmeric Sulfur Soap Glycerin Soap - Calthus and Tea Tree Soap Honey and Glycerin Soap Saffron Soap Honey and Glycerin Soap Cucumber and Aloe Vera Soap Papaya Soap with Milk Argan Soap 2-in-1 Shampoo and Conditioner 2-in-1 Shampoo and Conditioner (Anti-Dandruff Full of Vitamins) 2-in-1 Shampoo and Conditioner ( Volume and strength with keratin) 2-in-1 shampoo and conditioner (natural nourishment from roots to ends) 2-in-1 shampoo and conditioner for smooth and silky hair with Moroccan argan oil extract Anti-hair loss shampoo for hijab";
   Product product; //Editable search keyword

   ProductScreen({required this.product});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home:Scaffold(
         appBar:AppBar(
           leading:IconButton(
             icon: const Icon(
               Icons.arrow_back_ios,
               color:Colors.black,
             ),
             onPressed: () {
               Navigator. pop(context);
             },
           ),
           title: Text('Joud Mart'),
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
               SizedBox(
                 height: 100,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   SizedBox(
                     width: 266,
                     height: 88,
                     child:Text(
                       product.name,
                       textAlign: TextAlign.center,
                       style:TextStyle(
                         color:Colors.black,
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
                   image:DecorationImage(
                     image: AssetImage(product.imageUrl),
                     fit:BoxFit.fill,
                   ),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(26),
                   ),
                   shadows: [
                     BoxShadow(
                       color:Color(0x5B000000),
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
                 child:Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                       product.discountPrice.toStringAsFixed(2) + 'AED',
                       textAlign: TextAlign.right,
                       style:TextStyle(
                         color:Color(0xFF21BB68),
                         fontSize: 24,
                         fontFamily: 'Janna LT',
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                     Text(
                       product.price.toStringAsFixed(2) + 'AED',
                       textAlign: TextAlign.right,
                       style: const TextStyle(
                         color:Color(0xFFBB2121),
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
                   showDialog(
                     context: context,
                     builder: (BuildContext context) {
                       return const Added();
                     },
                   );
                 },
                 child:Container(
                   width: 330,
                   height: 50,
                   decoration: ShapeDecoration(
                     color: const Color(0xFF21BB68),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(26),
                     ),
                     shadows: const [
                       BoxShadow(
                         color:Color(0x3F000000),
                         blurRadius: 50,
offset: Offset(0, 30),
                         spreadRadius: 5,
                       )
                     ],
                   ),
                   child:Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(
                         FontAwesomeIcons.cartPlus,
                         color:Colors.white,
                         size: 20,
                       ),
                       Container(
                         width: 156,
                         height: 40,
                         child:Text(
                           'add to cart',
                           textAlign: TextAlign.center,
                           style:TextStyle(
                             color:Colors.white,
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
               TextButton(
                 onPressed: () {
                   showDialog(
                       context: context,
                       builder: (BuildContext context) {
                         return const Added_love();
                       });
                 },
                 child:Container(
                   width: 330,
                   height: 50,
                   decoration: ShapeDecoration(
                     color:Color(0xFF21BB68),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(26),
                     ),
                     shadows: const [
                       BoxShadow(
                         color:Color(0x3F000000),
                         blurRadius: 50,
                         offset: Offset(0, 30),
                         spreadRadius: 5,
                       )
                     ],
                   ),
                   child:Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(
                         FontAwesomeIcons.heart,
                         color:Colors.white,
                         size: 20,
                       ),
                       Container(
                         width: 156,
                         height: 40,
                         child: const Text(
                           'add to favourite',
                           textAlign: TextAlign.center,
                           style:TextStyle(
                             color:Colors.white,
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
                 height: 200,
               ),
             ],
           ),
         ),
       ),
     );
   }
}