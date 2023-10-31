import 'package:flutter/material.dart';
import 'package:joudmart/screens/arabic%20screens/intro_screen.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
                    color: Color(0xFF2e3192), // Title text color
                  ),
                ),
              ),
            ),
            // Name Input
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'الاسم'),
            ),
            // Email Input
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'البريد الإلكتروني'),
            ),
            // Phone Input
            TextField(
              controller: phoneController,
              decoration: InputDecoration(labelText: 'رقم الهاتف'),
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
            // Registration Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoadingScreen()));
              },
              child: Text('إنشئ حساب'),
            ),
          ],
        ),
      ),
    );
  }
}