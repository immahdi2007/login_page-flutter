import 'package:flutter/material.dart';
import 'package:login_page/view/pages/login/login_page.dart';
import 'package:login_page/view/pages/register/register1.dart';
import 'package:login_page/view/pages/register/register2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "modam",
      ),
      title: "Login_page",
      locale: Locale("en"),
      home: RegisterPage(),
    );
  }
}
