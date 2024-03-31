import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  final String email;
  final String phone;

  ProfileScreen({
    required this.name,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الملف الشخصي'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'الاسم:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(name),
            SizedBox(height: 16),
            Text(
              'البريد الإلكتروني:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(email),
            SizedBox(height: 16),
            Text(
              'رقم الهاتف:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(phone),
          ],
        ),
      ),
    );
  }
}
