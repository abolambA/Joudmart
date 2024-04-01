import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:joudmart/screens/arabic%20screens/login_screen.dart';
import 'package:joudmart/screens/arabic%20screens/home_screen.dart'; // Import HomeScreen

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool missingField = false;
  String errorMessage = '';

  void _registerUser() async {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        phoneController.text.isEmpty ||
        passwordController.text.isEmpty) {
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
        UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        if (userCredential.user != null) {
          await FirebaseFirestore.instance
              .collection('users')
              .doc(userCredential.user!.uid)
              .set({
            'name': nameController.text,
            'email': emailController.text,
            'phone': phoneController.text,
          });
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('name', nameController.text);
          await prefs.setString('email', emailController.text);
          await prefs.setString('phone', phoneController.text);
          // Navigate to HomeScreen after successful registration
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        }
      } on FirebaseAuthException catch (e) {
        print(e.message);
        setState(() {
          errorMessage = 'عفواً, يبدو انه هنالك مشكلة في المعلومات المدخلة';
        });
      }
    }
  }

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
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'الاسم',
                ),
              ),
              // Email Input
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'البريد الإلكتروني',
                ),
              ),
              // Phone Input
              TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: 'رقم الهاتف',
                ),
              ),
              // Password Input
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'كلمة المرور',
                ),
                obscureText: true,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _registerUser,
                child: Text(
                  'أنشئ حساب',
                  style: TextStyle(
                    color: Color(0xFF2e3192),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      missingField ? Color(0xFF8CC63F) : Color(0xFF8CC63F),
                ),
              ),
              if (missingField)
                Text(
                  errorMessage,
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
