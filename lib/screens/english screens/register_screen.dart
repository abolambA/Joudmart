import 'package:flutter/material.dart';
import 'package:joudmart/firebase_auth_implements/firebase_auth_services.dart';
import 'package:joudmart/screens/arabic%20screens/register_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:joudmart/screens/arabic%20screens/login_screen.dart';
import 'package:joudmart/screens/arabic%20screens/home_screen.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: RegisterScreen(),
    );
  }
}

class EngRegisterScreen extends StatefulWidget {
  @override
  _EngRegisterScreenState createState() => _EngRegisterScreenState();
}

class _EngRegisterScreenState extends State<RegisterScreen> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _obscurePassword = true;
  bool missingField = false;
  String errorMessage = '';

  void _registerUser() async {
    if (_usernameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _passwordController.text.isEmpty) {
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
          email: _emailController.text,
          password: _passwordController.text,
        );
        if (userCredential.user != null) {
          await FirebaseFirestore.instance
              .collection('users')
              .doc(userCredential.user!.uid)
              .set({
            'name': _usernameController.text,
            'email': _emailController.text,
            'password': _passwordController.text,
          });
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('username', _usernameController.text);
          await prefs.setString('email', _emailController.text);
          await prefs.setString('password', _passwordController.text);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
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
      body: Stack(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'الاسم',
                    ),
                  ),
                  // Email Input
                  TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'البريد الإلكتروني',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF8CC63F)),
                      ),
                    ),
                  ),
                  // Password Input
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'كلمة المرور',
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF8CC63F)),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xFF2e3192),
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                    obscureText: _obscurePassword,
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      _signup(); // Call the _signup function
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: const Text(
                      'أنشئ حساب',
                      style: TextStyle(
                        color: Color(0xFF2e3192),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: missingField
                          ? const Color(0xFF8CC63F)
                          : const Color(0xFF8CC63F),
                    ),
                  ),
                  if (missingField)
                    Text(
                      errorMessage,
                      style: const TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('لديك حساب ؟'),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF8CC63F),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                        child: const Text('سجل دخولك'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Language Switcher
          Positioned(
            top: 16,
            left: 16,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color(0xFF8CC63F)),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.language,
                      color: Color(0xFF8CC63F),
                    ),
                    SizedBox(width: 4),
                    Text(
                      'AR',
                      style: TextStyle(
                        color: Color(0xFF8CC63F),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _signup() async {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signupWithEmailAndPassword(username, email, password);

    if (user != null) {
      print("");
      Navigator.pushNamed(context, "/home");
    } else {
      print("");
    }
  }
}

