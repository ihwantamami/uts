import 'package:flutter/material.dart';
import 'package:modul6/home_screen.dart';
import 'package:modul6/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seputar Informatika',
      home: login(),
      routes: {
        '/home': (context) => home_screen(),
      },
    );
  }
}
