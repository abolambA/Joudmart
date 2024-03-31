import 'package:firebase_core/firebase_core.dart';
import 'package:joudmart/screens/arabic%20screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

  Future<void> main() async {
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
        home: HomeScreen(),
      );
    }
  }
