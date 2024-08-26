import 'package:flutter/material.dart';
import 'package:joudmart/firebase_auth_implements/firebase_auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:joudmart/screens/arabic%20screens/register_screen.dart';
import 'package:joudmart/screens/arabic%20screens/home_screen.dart'; // Import HomeScreen
import 'package:shared_preferences/shared_preferences.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool missingField = true;
  bool rememberMe = true;
  String errorMessage = '';

  Future<void> _loginUser() async {
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
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
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );

        if (userCredential.user != null) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('email', _emailController.text);
          await prefs.setString('password', _passwordController.text);
          Navigator.pushReplacement(
            // ignore: use_build_context_synchronously
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()), // Navigate to HomeScreen
          );
        } else {
          setState(() {
            errorMessage =
                'عفواً, يبدو انه هنالك مشكلة في المعلومات المدخلة في حالة عدم وجود حساب قم بانشاء واحد في الاسفل';
          });
        }
      } on FirebaseAuthException catch (e) {
        print(e.message);
        setState(() {
          errorMessage =
              'عفواً, يبدو انه هنالك مشكلة في المعلومات المدخلة في حالة عدم وجود حساب قم بانشاء واحد في الاسفل';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Color(0xFF8CC63F)),
            bodyText2: TextStyle(color: Color(0xFF8CC63F)),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'البريد الإلكتروني',
                ),
              ),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
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
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
    _signIn(); // Call the _signup function
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  },
                child: Text('تسجيل الدخول'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: missingField
                      ? const Color(0xFF8CC63F)
                      : const Color(0xFF8CC63F),
                ),
              ),
              if (errorMessage.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    errorMessage,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('ليس لديك حساب؟'),
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
                        MaterialPageRoute(builder: (context) => RegisterScreen()),
                      );
                    },
                    child: const Text('أنشئ حساب'),
                  ),
                ],
              ),
              const SizedBox(height: 16), // Add SizedBox for spacing
            ],
          ),
        ),
      ),
    );
  }
  void _signIn() async{

    // ignore: unused_local_variable
    String email = _emailController.text;
    // ignore: unused_local_variable
    String password = _passwordController.text;

    // ignore: unused_local_variable
    User? user = await _auth.signInWithEmailAndPassword(email,password);

    
    // ignore: unnecessary_null_comparison
    if (user != null){

      print("User is successfully created"); 
      Navigator.pushNamed(context, "/home");
    } else {
      print("Some error happened");
    }
    
  }
}
