import 'package:flutter/material.dart';
import 'package:tugasenam/home_page.dart';
import 'package:tugasenam/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas praktikum 6',
      theme: ThemeData(),
      home: const LoginPage(),
    );
  }
}
