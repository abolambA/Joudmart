  // ignore: unused_import
  import 'package:joudmart/screens/arabic%20screens/intro_screen.dart';
  import 'package:joudmart/screens/arabic%20screens/login_screen.dart';
  import 'firebase_options.dart';
  import 'package:flutter/material.dart';
  import 'package:firebase_core/firebase_core.dart';


  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
runApp(joudmartApp());
}
  class joudmartApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'joudmart',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginScreen(),
      );
    }
  }
