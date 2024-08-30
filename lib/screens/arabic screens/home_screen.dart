import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart'; // Add this import for URL launching
import 'package:joudmart/screens/arabic%20screens/about%20us.dart';
import 'package:joudmart/screens/arabic%20screens/cart_screen.dart';
import 'package:joudmart/screens/arabic%20screens/product_screen.dart';
import 'package:joudmart/screens/arabic%20screens/profile%20screen.dart';
import 'package:joudmart/screens/arabic%20screens/section1.dart';
import 'package:joudmart/screens/arabic%20screens/section10.dart';
import 'package:joudmart/screens/arabic%20screens/section11.dart';
import 'package:joudmart/screens/arabic%20screens/section12.dart';
import 'package:joudmart/screens/arabic%20screens/section2.dart';
import 'package:joudmart/screens/arabic%20screens/section3.dart';
import 'package:joudmart/screens/arabic%20screens/section4.dart';
import 'package:joudmart/screens/arabic%20screens/section5.dart';
import 'package:joudmart/screens/arabic%20screens/section6.dart';
import 'package:joudmart/screens/arabic%20screens/section7.dart';
import 'package:joudmart/screens/arabic%20screens/section8.dart';
import 'package:joudmart/screens/arabic%20screens/section9.dart';
import 'package:joudmart/screens/english%20screens/home_screen.dart';
import 'package:joudmart/widgets/Products.dart';

//ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  final List<String> sectionNames = [
    'جديدنا🤖',
    'الزيوت الطبيعية للشعر',
    'منتجات العسل الطبيعي 🍯',
    'منتجات الشاي والأعشاب الطبيعية 🍵',
    'كريمات عبق المشرق الفاخرة ✨',
    'احجار المسك الجامدة المعطرة 🌹',
    'زيوت الطبيعة 🌿',
    'غسولات الوجه',
    'مقشرات الوجه',
    'الدخون والبخور والعود المعطر',
    'صابون الطبيعة🪴',
    'شامبو بخلاصة الطبيعة',
  ];

  String searchKeyword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Image.asset('assets/logo.png'),
            ),
            ListTile(
              title: const Text(
                'الرئيسية🏠',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'جديدنا🤖',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Section1(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'الزيوت الطبيعية للشعر',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Section2(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'منتجات العسل الطبيعي 🍯',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Section3(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'منتجات الشاي والأعشاب الطبيعية 🍵',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Section4(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'كريمات عبق المشرق الفاخرة ✨',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Section5(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'احجار المسك الجامدة المعطرة 🌹',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Section6(),
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
                    builder: (context) => const Section7(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'غسولات الوجه',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Section8(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'مقشرات الوجه',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Section9(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'الدخون والبخور والعود المعطر💨',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Section10(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'صابون الطبيعة🪴',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Section11(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'شامبو بخلاصة الطبيعة',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Section12(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'من نحن ℹ️',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const about(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'حسابي ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(
                      name: '',
                      email: '',
                      phone: '',
                    ),
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
                      'EN🇬🇧',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(width: 8),
                  ],
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
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.deepPurple,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            color: Colors.green,
            onPressed: () {
              // Open wishlist screen or perform wishlist-related actions
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        searchKeyword = value;
                      },
                      decoration: InputDecoration(
                        hintText: 'Search',
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            for (int sectionIndex = 0; sectionIndex < sections.length; sectionIndex++)
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      sectionNames[sectionIndex],
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: sections[sectionIndex].map(
                        (product) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductScreen(product: product),
                              ),
                            );
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
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ).toList(),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            SizedBox(height: 100),
            // Add the copyright section here
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.copyright, size: 18),
                      SizedBox(width: 4),
                      Text(
                        '2024-2025 | جود مارت',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold, // Make text bold
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'تم إنشاء التطبيق بواسطة ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'نهاد الصوفي',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(Uri.parse('https://nihad-alsoufi.web.app'));
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    
  }
}
