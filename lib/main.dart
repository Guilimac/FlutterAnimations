import 'package:flutter/material.dart';
import 'package:my_animmated_app/screens/login/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Animations",
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
