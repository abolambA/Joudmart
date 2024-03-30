import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:joudmart/screens/arabic%20screens/intro_screen.dart';
import 'package:joudmart/screens/arabic%20screens/login_screen.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatefulWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool missingField = false;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Centered Title Text
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'أنشئ حساباً',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF8CC63F),
                    ),
                  ),
                ),
              ),
              // Name Input
              TextField(
                controller: widget.nameController,
                decoration: InputDecoration(
                  labelText: 'الاسم',
                ),
              ),
              // Email Input
              TextField(
                controller: widget.emailController,
                decoration: InputDecoration(
                  labelText: 'البريد الإلكتروني',
                ),
              ),
              // Phone Input
              TextField(
                controller: widget.phoneController,
                decoration: InputDecoration(
                  labelText: 'رقم الهاتف',
                ),
              ),
              // Password Input
              TextField(
                controller: widget.passwordController,
                decoration: InputDecoration(
                  labelText: 'كلمة المرور',
                ),
                obscureText: true,
              ),
              // Remember Me Checkbox
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
                  Text(
                    'تذكرني',
                    style: TextStyle(
                      color: Color(0xFF8CC63F),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  if (widget.nameController.text.isEmpty ||
                      widget.emailController.text.isEmpty ||
                      widget.phoneController.text.isEmpty ||
                      widget.passwordController.text.isEmpty) {
                    setState(() {
                      missingField = true;
                    });
                  } else {
                    try {
                      setState(() {
                        missingField = false;
                      });
                      UserCredential? userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: widget.emailController.text,
                        password: widget.passwordController.text,
                      );
                      if (userCredential.user != null) {
                        await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
                          'name': widget.nameController.text,
                          'email': widget.emailController.text,
                          'phone': widget.phoneController.text,
                        });
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        await prefs.setString('email', widget.emailController.text);
                        await prefs.setString('password', widget.passwordController.text);
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoadingScreen()));
                      }
                    } on FirebaseAuthException catch (e) {
                      print(e.message);
                    }
                  }
                },
                child: Text(
                  'أنشئ حساب',
                  style: TextStyle(
                    color: Color(0xFF2e3192),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: missingField ? Color(0xFF8CC63F) : Color(0xFF8CC63F),
                ),
              ),
              if (missingField)
                Text(
                  'الرجاء ملء جميع الحقول المطلوبة',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('لديك حساب ؟'),
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
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text('سجل دخولك'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
