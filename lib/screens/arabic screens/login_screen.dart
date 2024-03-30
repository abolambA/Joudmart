import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:joudmart/screens/arabic%20screens/intro_screen.dart';
import 'package:joudmart/screens/arabic%20screens/register_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool missingField = false;
  bool rememberMe = false;
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Color(0xFF8CC63F)),
            bodyText2: TextStyle(color: Color(0xFF8CC63F)),
          ),  
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'مرحباً بك',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2e3192),
                    ),
                  ),
                ),
              ),
              TextField(
                controller: widget.emailController,
                decoration: InputDecoration(
                  labelText: 'البريد الإلكتروني',
                ),
              ),
              TextField(
                controller: widget.passwordController,
                decoration: InputDecoration(
                  labelText: 'كلمة المرور',
                ),
                obscureText: true,
              ),
              Row(
                children: [
                  Checkbox(
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value!;
                      });
                    },
                  ),
                  Text('تذكرني'),
                ],
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  if (widget.emailController.text.isEmpty || widget.passwordController.text.isEmpty) {
                    setState(() {
                      missingField = true;
                      errorMessage = 'الرجاء ملء جميع الحقول المطلوبة';
                    });
                  } else {
                    try {
                      setState(() {
                        missingField = false;
                        errorMessage = '';
                      });
                      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: widget.emailController.text,
                        password: widget.passwordController.text,
                      );

                      if (userCredential.user != null) {
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        await prefs.setString('email', widget.emailController.text);
                        await prefs.setString('password', widget.passwordController.text);
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoadingScreen()));
                      }
                    } on FirebaseAuthException catch (e) {
                      print(e.message);
                      setState(() {
                        errorMessage = 'عفواً, يبدو انه هنالك مشكلة في المعلومات المدخلة في حالة عدم وجود حساب قم بانشاء واحد في الاسفل';
                      });
                    }
                  }
                },
                child: Text('تسجيل الدخول'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: missingField ? Colors.red : Color(0xFF8CC63F),
                ),
              ),
              if (errorMessage.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    errorMessage,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ليس لديك حساب؟'),
                  SizedBox(width: 8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF8CC63F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterScreen()),
                      );
                    },
                    child: Text('أنشئ حساب'),
                  ),
                ],
              ),
              SizedBox(height: 16), // Add SizedBox for spacing
            ],
          ),
        ),
      ),
    );
  }
}
