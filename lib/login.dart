import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(title: Text("Menu Login")),
      body: Column(
        children: [
           SizedBox(height: 50),
          //Image.asset(''),
          Image.asset('assets/buku.png',height: 150,),
         // SizedBox(height: 20),
          Text('LOGIN',
              style: GoogleFonts.inter(fontSize: 20, color: Colors.white)),
          Text('Email Address'),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              controller: _usernameController,
              style: TextStyle(color: Color.fromARGB(255, 12, 3, 3)),
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                  
                ),
                
              ),
            ),
          ),
          SizedBox(height: 30),
          Text('Password'),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              controller: _passwordController,
              style: TextStyle(color: Color.fromARGB(255, 161, 51, 51)),
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              obscureText:
                  true, // Set this to true to obscure the text as asterisks
            ),
          ),
          ElevatedButton(
              onPressed: (() {
                String username = _usernameController.text;
                Navigator.pushNamed(context, '/home', arguments: username);
              }),
              child: Text('LOGIN')),
        ],
      ),
    );
  }
}
