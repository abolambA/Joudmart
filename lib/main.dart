  import 'package:flutter/material.dart';
  import 'package:joudmart/screens/arabic%20screens/intro_screen.dart';

  void main() => runApp(joudmartApp());

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
