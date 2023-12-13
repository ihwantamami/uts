import 'package:flutter/material.dart';
import 'package:modul6/login.dart';

class splash_screen extends StatelessWidget {
  const splash_screen({super.key});
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => login()), (route) => false);
    });
    return Scaffold(
      body: Image.asset('assets/uin.png'),
    );
  }
}
