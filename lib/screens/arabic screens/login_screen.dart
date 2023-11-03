import 'package:flutter/material.dart';
import 'package:joudmart/screens/arabic%20screens/intro_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:joudmart/screens/arabic screens/register_screen.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool missingField = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Centered Title Text
          const Align(
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
          // Email Input
          TextField(
            controller: widget.emailController,
            decoration: InputDecoration(labelText: 'البريد الإلكتروني'),
          ),
          // Password Input
          TextField(
            controller: widget.passwordController,
            decoration: InputDecoration(labelText: 'كلمة المرور'),
            obscureText: true,
          ),
          // Remember Me Checkbox
          Row(
            children: [
              Checkbox(value: false, onChanged: (value) {}),
              Text('تذكرني'),
            ],
          ),
          // "ليس لديك حساب؟" Text
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ليس لديك حساب؟'),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF8CC63F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                },
                child: Text(
                  'أنشئ حساب',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          // Login Button with validation
          ElevatedButton(
            onPressed: () async {
              if (widget.emailController.text.isEmpty || widget.passwordController.text.isEmpty) {
                setState(() {
                  missingField = true;
                });
              } else {
                try {
                  setState(() {
                    missingField = false;
                  });
                  UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: widget.emailController.text,
                    password: widget.passwordController.text,
                  );

                  // Redirect to the loading screen or any other screen upon successful login
                  if (userCredential.user != null) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoadingScreen()));
                  }
                } on FirebaseAuthException catch (e) {
                  // Handle Firebase Authentication errors here (e.g., invalid credentials)
                  print(e.message);
                }
              }
            },
            child: Text('تسجيل الدخول'),
            style: ElevatedButton.styleFrom(
              primary: missingField ? Colors.red : Color(0xFF8CC63F),
            ),
          ),
          if (missingField)
            Text(
              'الرجاء ملء جميع الحقول المطلوبة',
              style: TextStyle(color: Colors.red),
            ),
        ],
      ),
    );
  }
}
