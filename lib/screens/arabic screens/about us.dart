import 'package:flutter/material.dart';
import 'package:joudmart/screens/arabic%20screens/home_screen.dart';
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
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  Future<void> _openFacebook() async {
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

  Future<void> _openweb() async {
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

  Future<void> _openTikTok() async {
    try {
      Uri fbBundleUri =
          Uri.parse('https://www.tiktok.com/@joudmart?_t=8ekvp7jtpic&_r=1');
      var canLaunchNatively = await canLaunchUrl(fbBundleUri);

      if (canLaunchNatively) {
        await launchUrl(fbBundleUri);
      }
    } catch (e) {
      print("unable to launch");
    }
  }

  Future<void> _openinstag() async {
    try {
      Uri fbBundleUri =
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
      home: Scaffold(
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
              color: Color(0xFF483285),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.favorite),
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
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'من نحن',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
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
                    child: Text(
                      'مرحبًا بكم في جود مارت، وجهتك الشاملة لجميع احتياجاتك من المنتجات الراقية و عالية الجودة نحن نفخر بكوننا متجرك الإلكتروني الموثوق به ، ونلتزم بتزويدك بأفضل المنتجات و الأسعار وتجربة تسوق استثنائية.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
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
                'مهمتنا',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
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
                child: Text(
                  'مهمتنا هي تبسيط حياتك من خلال تقديم مجموعة واسعة من المنتجات التي تنبض بالصحة. نهدف إلى جعل التسوق من المنزل أمرًا مريحًا وموفرًا للوقت وخاليًا من المتاعب.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
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
                'الجودة و النضارة',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
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
                child: Text(
                  'نحن ملتزمون بتزويدك بأحدث المنتجات وأكثرها جودة. يقوم فريقنا برعاية كل عنصر في مخزوننا بعناية لضمان حصولك على الأفضل مع جود مارت.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
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
                'الراحة في متناول يدك',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Janna LT',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 353,
                height: 164,
                child: Text(
                  'نحن نتفهم أهمية التسليم في الوقت المناسب ، ولهذا السبب لدينا فريق متخصص يعمل بجد لضمان وصول طلباتك إليك في أسرع وقت ممكن. سواء كنت بحاجة إلى مشترياتك في فترة محددة أو تفضل توصيلًا مجدولًا, فنحن نوفر لك ما تحتاجه.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
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
                'رضا العملاء',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Janna LT',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 353,
                height: 100,
                child: Text(
                  'عملاؤنا هم في صميم كل ما نقوم به ، ورضاك هو أولويتنا القصوى. نحن نفخر بتقديم خدمة عملاء ممتازة ونحن دائمًا هنا لمساعدتك في أي استفسارات.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: _openFacebook,
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.facebook,
                          color: Color(0xFF1400FF),
                          size: 50,
                        ),
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFFFFF),
                          shape: OvalBorder(),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
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
                  child: Container(
                  width: 50,
                  height: 50,
                  child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                  return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xfffeda75),  // Light yellow
                Color(0xfffa7e1e),  // Orange
                Color(0xffd62976),  // Pink
                Color(0xff962fbf),  // Purple
                Color(0xff4f5bd5),  // Blue
               ],
             ).createShader(bounds);
            },
            child: Icon(
            FontAwesomeIcons.instagram,
            size: 40,
            color: Colors.white, // Icon color is determined by the shader mask
           ),
          ),
        decoration: ShapeDecoration(
        color: Color(0xFFFFFFFF),
        shape: CircleBorder(),
        shadows: [
        BoxShadow(
          color: Color(0x3F000000),
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
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.tiktok,
                          color: Color(0xFFFFFFFF),
                          size: 40,
                        ),
                        decoration: ShapeDecoration(
                          color: Color(0xFF000000),
                          shape: OvalBorder(),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
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
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          FontAwesomeIcons.globe,
                          color: Color(0xFF00FF1A),
                          size: 40,
                        ),
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFFFFF),
                          shape: OvalBorder(),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
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
