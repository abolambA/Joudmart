import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Screen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                // Perform login action
              },
            ),
            SizedBox(height: 10),
            TextButton(
              child: Text('Create an account'),
              onPressed: () {
                // Navigate to signup screen
                Navigator.pushNamed(context, SignupScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SignupScreen extends StatelessWidget {
  static const routeName = '/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Signup Screen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Signup'),
              onPressed: () {
                // Perform signup action
              },
            ),
            SizedBox(height: 10),
            TextButton(
              child: Text('Already have an account? Login'),
              onPressed: () {
                // Navigate back to login screen
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
