  import 'package:flutter/material.dart';
  // ignore: depend_on_referenced_packages
  import 'package:firebase_core/firebase_core.dart';
  import 'package:joudmart/screens/arabic%20screens/intro_screen.dart';

  Future<void> main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
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
        home: LoadingScreen(),
      );
    }
  }
