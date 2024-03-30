import 'package:flutter/material.dart';
import 'package:joudmart/screens/arabic%20screens/home_screen.dart';
import 'package:joudmart/screens/english%20screens/home_screen.dart';
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
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class engabout extends StatefulWidget {
   const engabout({super.key});

   @override
   State<engabout> createState() => _engaboutState();
}

class _engaboutState extends State<engabout> {
   Future<void>_openFacebook() async {
     try {
       Uri fbBundleUri = Uri.parse('https://www.facebook.com/joudmart/');
       var canLaunchNatively = await canLaunchUrl(fbBundleUri);

       if (canLaunchNatively) {
         await launchUrl(fbBundleUri);
       }
     } catch (e) {
       print("unable to launch");
     }
   }

   Future<void>_openweb() async {
     try {
       Uri fbBundleUri = Uri.parse('https://www.joudmart.com');
       var canLaunchNatively = await canLaunchUrl(fbBundleUri);

       if (canLaunchNatively) {
         await launchUrl(fbBundleUri);
       }
     } catch (e) {
       print("unable to launch");
     }
   }

   Future<void>_openTikTok() async {
     try {
       Uri fbBundleUri=
           Uri.parse('https://www.tiktok.com/@joudmart?_t=8ekvp7jtpic&_r=1');
       var canLaunchNatively = await canLaunchUrl(fbBundleUri);

       if (canLaunchNatively) {
         await launchUrl(fbBundleUri);
       }
     } catch (e) {
       print("unable to launch");
     }
   }

   Future<void>_openinstag() async {
     try {
       Uri fbBundleUri=
           Uri.parse('https://instagram.com/joudmart?igshid=MmIzYWVlNDQ5Yg==');
       var canLaunchNatively = await canLaunchUrl(fbBundleUri);

       if (canLaunchNatively) {
         await launchUrl(fbBundleUri);
       }
     } catch (e) {
       print("unable to launch");
     }
   }

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home:Scaffold(
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
                       builder: (context) => const engSection1(),
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
                       builder: (context) => const engSection2(),
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
                     MaterialPageRoute(builder: (context) => const engSection3(),
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
               color:Color(0xFF483285),
               onPressed: () {},
             ),
             IconButton(
               icon: const Icon(Icons.favorite),
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
                   Text(
                     'who are we',
                     textAlign: TextAlign.center,
                     style:TextStyle(
                       color:Colors.black,
                       fontSize: 24,
                       fontFamily: 'Janna LT',
                       fontWeight: FontWeight.w700,
                     ),
                   ),
                 ],
               ),
               SizedBox(
                 height: 5,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   SizedBox(
                     width: 353,
                     height: 130,
                     child:Text(
                       'Welcome to Good Mart, your comprehensive destination for all your needs of high-quality, high-end products. We are proud to be your trusted online store, and we are committed to providing you with the best products, prices, and an exceptional shopping experience.',
                       textAlign: TextAlign.center,
                       style:TextStyle(
                         color:Colors.black,
                         fontSize: 16,
                         fontFamily: 'A Jannat LT',
                         fontWeight: FontWeight.w400,
                       ),
                     ),
                   )
                 ],
               ),
               SizedBox(
                 height: 24,
               ),
               Text(
                 'Our mission',
                 textAlign: TextAlign.center,
                 style:TextStyle(
                   color:Colors.black,
                   fontSize: 24,
                   fontFamily: 'Janna LT',
                   fontWeight: FontWeight.w700,
                 ),
               ),
               SizedBox(
                 height: 5,
               ),
               SizedBox(
                 width: 353,
                 height: 155,
                 child:Text(
                   'Our mission is to simplify your life by offering a wide range of products that exude health. We aim to make home shopping convenient, time-saving and hassle-free.',
                   textAlign: TextAlign.center,
                   style:TextStyle(
                     color:Colors.black,
                     fontSize: 16,
                     fontFamily: 'A Jannat LT',
                     fontWeight: FontWeight.w400,
                   ),
                 ),
               ),
               SizedBox(
                 height: 5,
               ),
               Text(
                 'Quality and freshness',
                 textAlign: TextAlign.center,
                 style:TextStyle(
                   color:Colors.black,
                   fontSize: 24,
                   fontFamily: 'Janna LT',
                   fontWeight: FontWeight.w700,
                 ),
               ),
               SizedBox(
                 height: 5,
               ),
               SizedBox(
                 width: 353,
                 height: 122,
                 child:Text(
                   'We are committed to providing you with the latest and highest quality products. Our team carefully curates every item in our inventory to ensure you get the best with Good Mart.',
                   textAlign: TextAlign.center,
                   style:TextStyle(
                     color:Colors.black,
                     fontSize: 16,
                     fontFamily: 'A Jannat LT',
                     fontWeight: FontWeight.w400,
                   ),
                 ),
               ),
               SizedBox(
                 height: 5,
               ),
               Text(
                 'Convenience at your fingertips',
                 textAlign: TextAlign.center,
                 style:TextStyle(
                   color:Colors.black,
                   fontSize: 24,
                   fontFamily: 'Janna LT',
                   fontWeight: FontWeight.w700,
                 ),
               ),SizedBox(
                 width: 353,
                 height: 164,
                 child:Text(
                   'We understand the importance of timely delivery, which is why we have a dedicated team who work hard to ensure your orders reach you as quickly as possible. Whether you need your purchases at a specific time or prefer scheduled delivery, weve got you covered.',
                   textAlign: TextAlign.center,
                   style:TextStyle(
                     color:Colors.black,
                     fontSize: 16,
                     fontFamily: 'A Jannat LT',
                     fontWeight: FontWeight.w400,
                   ),
                 ),
               ),
               SizedBox(
                 height: 15,
               ),
               Text(
                 'customers satisfaction',
                 textAlign: TextAlign.center,
                 style:TextStyle(
                   color:Colors.black,
                   fontSize: 24,
                   fontFamily: 'Janna LT',
                   fontWeight: FontWeight.w700,
                 ),
               ),
               SizedBox(
                 width: 353,
                 height: 100,
                 child:Text(
                   'Our customers are at the heart of everything we do, and your satisfaction is our top priority. We pride ourselves on providing excellent customer service and are always here to assist you with any inquiries.',
                   textAlign: TextAlign.center,
                   style:TextStyle(
                     color:Colors.black,
                     fontSize: 16,
                     fontFamily: 'A Jannat LT',
                     fontWeight: FontWeight.w400,
                   ),
                 ),
               ),
               SizedBox(
                 height: 30,
               ),
               SizedBox(
                 width: 353,
                 child:Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     TextButton(
                       onPressed: _openFacebook,
                       child:Container(
                         width: 50,
                         height: 50,
                         child:Icon(
                           Icons.facebook,
                           color:Color(0xFF1400FF),
                           size: 50,
                         ),
                         decoration: ShapeDecoration(
                           color:Color(0xFFFFFFFF),
                           shape:OvalBorder(),
                           shadows: [
                             BoxShadow(
                               color:Color(0x3F000000),
                               blurRadius: 4,
                               offset: Offset(0, 4),
                               spreadRadius: 0,
                             )
                           ],
                         ),
                       ),
                     ),
                     TextButton(
                   onPressed: _openinstag,
                   child:Container(
                   width: 50,
                   height: 50,
                   child: ShaderMask(
                   shaderCallback: (Rect bounds) {
                   return LinearGradient(
                   begin:Alignment.topCenter,
                   end:Alignment.bottomCenter,
                   colors: [
                 Color(0xfffeda75), // Light yellow
                 Color(0xfffa7e1e), //Orange
                 Color(0xffd62976), // Pink
                 Color(0xff962fbf), //Purple
                 Color(0xff4f5bd5), //Blue
                ],
              ).createShader(bounds);
             },
             child:Icon(
             FontAwesomeIcons.instagram,
             size: 40,
             color: Colors.white, // Icon color is determined by the shader mask
            ),
           ),
         decoration: ShapeDecoration(
         color:Color(0xFFFFFFFF),
         shape:CircleBorder(),
         shadows: [
         BoxShadow(
           color:Color(0x3F000000),
           blurRadius: 4,
           offset: Offset(0, 4),
           spreadRadius: 0,
         ),
       ],
     ),
   ),
),

                     TextButton(
                       onPressed: _openTikTok,
                       child:Container(
                         width: 50,
                         height: 50,
                         child:Icon(
                           Icons. tiktok,
                           color:Color(0xFFFFFFFF),
                           size: 40,
                         ),
                         decoration: ShapeDecoration(
                           color:Color(0xFF000000),
                           shape:OvalBorder(),
                           shadows: [
                             BoxShadow(
                               color:Color(0x3F000000),
                               blurRadius: 4,
                               offset: Offset(0, 4),
                               spreadRadius: 0,
                             )
                           ],
                         ),
                       ),
                     ),
                     TextButton(
                       onPressed: _openweb,
                       child:Container(
                         width: 50,
                         height: 50,
                         child:Icon(
                           FontAwesomeIcons.globe,
                           color:Color(0xFF00FF1A),
                           size: 40,
                         ),
                         decoration: ShapeDecoration(
                           color:Color(0xFFFFFFFF),
                           shape:OvalBorder(),
                           shadows: [
                             BoxShadow(
                               color:Color(0x3F000000),
                               blurRadius: 4,
                               offset: Offset(0, 4),
                               spreadRadius: 0,
                             )
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
               SizedBox(
                 height: 50,
               ),
             ],
           ),
         ),
       ),
     );
   }
}