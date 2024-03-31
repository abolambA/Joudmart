import 'package:flutter/material.dart';
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
    ' منتجات الشاي والأعشاب الطبيعية 🍵',
    'كريمات عبق المشرق الفاخرة ✨',
    'احجار المسك الجامدة المعطرة 🌹',
    'زيوت الطبيعة 🌿',
    'غسولات الوجه',
    'مقشرات الوجه',
    'الدخون والبخور والعود المعطر',
    'صابون الطبيعة🪴',
    'شامبو بخلاصة الطبيعة',
  ];
    String searchKeyword = "كوزمو روبوت كوزمو روبوت من أنكي مبوترانجر روبوت أستروبوت روبوت جيموروبوت كيت ماكس ميكانو روبوت UBTECH JIMU Robot Cozmo Robot Bag زيت شعر العشب الأخضر زيت الأرغان المغربي زيت شعر العشب الأخضر 250 مل زيت الثعبان الأصلي 120 مل زيت الثعبان الأصلي 250 مل زيت شعر الثعبان الفائق زيت شعر الكوبرا الحبة السوداء زيت 200 مل زيت الزنجبيل 200 مل عسل الزنجبيل 250 جرام عسل نقي 250 جرام عسل الجينسينج 250 جرام عسل الحبة السوداء 250 جرام عسل سدر 450 جرام عسل الحبة السوداء 450 جرام عسل غذاء ملكي 310 جرام عسل نقي مع الحبة السوداء 125 جرام عسل نقي 125 جرام عسل مع الزنجبيل 125 جرام عسل الحبة السوداء 610 جرام عسل سدر 610 جرام أسود عسل بذور 340 جرام عسل نقي مع الجينسينج 125 جرام عسل تخسيس 310 جرام عسل نقي 1 كجم عسل نقي 600 جرام عبوة عسل خاصة شاي أخضر مع الورد شاي أخضر بالنعناع والليمون شاي أخضر بالنعناع والزنجبيل شاي أخضر بالنعناع شاي أخضر بالليمون شاي أخضر بالقرفة شاي أخضر مع العسل الشاي الأخضر مع الزنجبيل الشاي الأخضر النقي الشاي الأخضر مع البابونج شاي تخسيس الوزن مع النعناع شاي تخسيس مع مزيج الفواكه شاي تخسيس الوزن مع العسل شاي تخسيس الوزن مع التفاح الأخضر شاي تخسيس الوزن شاي أخضر مع اليانسون شاي أخضر مع الهيل شاي أخضر مع الجينسنغ الشاي الأخضر مع الياسمين، شاي الأعشاب، الحبة السوداء، شاي الياسمين العطري، شاي الورد بالنعناع المنعش، شاي الكركديه المثير، شاي الكركديه المهدئ، شاي البابونج المهدئ، شاي الحمية الطبيعية المثالية، كريم الورد الفاخر، كريم العود الفاخر، كريم المسك الفاخر، كريم المخلطات الفاخرة، كريم العنبر الفاخر، كريم البخور الفاخر، عود المسك المعطر بالحجر حجر العنبر الصلب المسك العربي حجر معطر جنة الفردوس حجر المسك الصلب زيت الخس 250 مل زيت اللوز الحلو 250 مل زيت الحلبة 250 مل زيت الزنجبيل 250 مل زيت الثوم 250 مل زيت لسان الثور 250 مل زيت بذور العنب 250 مل زيت بذر الكتان 500 مل زيت القرفة 30 مل زيت نبات القراص 30 مل زيت الخروع 30 مل ذيل الحصان زيت 30 مل زيت الخيار 30 مل زيت المهلب 30 مل زيت الزنجبيل 30 ملزيت السمسم 30 مل زيت المستكة 30 مل زيت النخالة الأرز 30 مل زيت زبدة الشيا 30 مل زيت الكركديه 30 مل زيت الفانيلا 30 مل زيت الخزامى 30 مل زيت الحنة 30 مل زيت الخس 30 مل زيت البابونج الأزرق 30 مل زيت الحرمل 30 مل زيت النانخة 30 مل غسول الوجه مرطب مع خلاصة الزيتون غسول الوجه بخلاصة النيم لحب الشباب غسول الوجه بخلاصة الليمون للتحكم بالدهون غسول الوجه بخلاصة الطين للتنظيف العميق غسول الوجه بخلاصة الصبار لبشرة نشيطة غسول الوجه بخلاصة الخيار لتبييض الوجه غسول الوجه بخلاصة الحليب و العسل لتنظيف البشرة غسول الوجه بحبة البركة فلورز خلاصة عشبية غسول الوجه المتطور بالحبة السوداء مقشر الوجه بخلاصة المشمش و الجوز مقشر الوجه بخلاصة اللوز مقشر الوجه بخلاصة الفواكه السلسة مقشر الوجه بخلاصة الرمان و الصبار مقشر الوجه بخلاصة الأعشاب 5 ب1 مقشر الوجه بالحبة السوداء مقشر الوجه بالأرغان مقشر الوجه بخلاصة المكاديميا عود ضيوف المجالس المعطر عود بنت القمر المعطر عود بنت الشرق المعطر عود الوجاهة المعطر عود الميثم المعطر عود الفواح المعطر عود الأصيلة المعطر عود الأُبّهة المعطر عود اهلاً و سهلاً المعطر عود أميرة الشرق المعطر دخون هنادي دخون هلا دخون دانة الدنيا دخون هنادي دخون تميم دخون الملوك دخون الإمارات دخون اريج جيف صابون قناع الطين جيف صابون شد الوجه جيف صابون حب الشباب جيف صابون المزيل المزود بالرمان جيف صابون الخيار جيف صابون الحية جيف صابون الحليب و العسل جيف صابون البركة جيف صابون البابايا جيف صابون إزالة علامات الشد صابون الخزامى صابون الكركم صابون الكبريت صابون الغليسيرين – صابون الكالتوس وشجرة الشاي صابون العسل والغليسيرين صابون الزعفران صابون العسل والغليسيرين صابون الخيار و الصبار صابون البابايا مع الحليب صابون الأرغان شامبو و بلسم 2 في 1 شامبو وبلسم2 في 1 (ضد القشرة مليء بالفيتامين) شامبو وبلسم 2 في 1 (حجم وقوة مع الكيراتين) شامبو وبلسم 2 في 1 (تغذية طبيعية من الجذور إلى الأطراف) شامبو وبلسم 2 في 1 لشعر سلس وحريري بخلاصة زيت الأرغان المغربي شامبو مانع تساقط الشعر للحجاب";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
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
                ' منتجات الشاي والأعشاب الطبيعية 🍵',
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
          name: 'nameController.text',
          email: 'emailController.text',
          phone: 'phoneController.text',
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
                       builder: (context) =>  engHomeScreen(),
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
        title: Text('joudmart'),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.deepPurple,
            onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  CartScreen(),  
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
