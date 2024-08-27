import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:joudmart/screens/arabic%20screens/register_screen.dart';
import 'package:joudmart/screens/arabic%20screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Check if user is already logged in
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? email = prefs.getString('email');
  String? password = prefs.getString('password');

  runApp(MyApp(email: email, password: password));
}

class MyApp extends StatelessWidget {
  final String? email;
  final String? password;

  MyApp({this.email, this.password});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: email != null && password != null
          ? HomeScreen() // Automatically go to HomeScreen if logged in
          : LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _obscurePassword = true;
  bool rememberMe = true;
  String errorMessage = '';

  Future<void> _loginUser() async {
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      setState(() {
        errorMessage = 'الرجاء ملء جميع الحقول المطلوبة';
      });
    } else {
      try {
        setState(() {
          errorMessage = '';
        });
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );

        if (userCredential.user != null) {
          if (rememberMe) {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            await prefs.setString('email', _emailController.text);
            await prefs.setString('password', _passwordController.text);
          }

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
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
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF8CC63F)),
                  ),
                ),
              ),
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
                onPressed: _loginUser,
                child: const Text('تسجيل الدخول'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8CC63F),
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
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
