import 'package:flutter/material.dart';
import 'package:joudmart/screens/arabic screens/register_screen.dart';
import 'package:joudmart/screens/arabic%20screens/intro_screen.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
            controller: emailController,
            decoration: InputDecoration(labelText: 'البريد الإلكتروني'),
          ),
          // Password Input
          TextField(
            controller: passwordController,
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
                  primary: Color(0xFF8CC63F), // Your desired color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded button
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()));
                },
                child: Text(
                  'أنشئ حساب',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          // Login Button
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoadingScreen()));
            },
            child: Text('تسجيل الدخول'),
          ),
        ],
      ),
    );
  }
}
