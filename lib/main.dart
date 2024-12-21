import 'package:flutter/material.dart';
import 'package:newapp/screens/homepage.dart';
import 'package:newapp/screens/sabalsplash.dart';
import 'package:newapp/themes/LoginPageThemes/loginthemes.dart';

void main() {
  runApp(const SabalApp());
}

class SabalApp extends StatelessWidget {
  const SabalApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sabal App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Controllers for email and password fields
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Function to show alert dialog
  void _showAlert(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  // Login button handler
  void _handleLogin() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      _showAlert('Missing values! Please enter both email and password.');
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => indexpage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDCE6F7),
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0, left: 11.0, right: 11.0),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          children: [
            SizedBox(height: 30),
            // Welcome Text
            Container(
              height: 30,
              child: Text("Welcome to", style: getheading()),
            ),
            Container(
              height: 40,
              child: Text("Sabal Mobile App", style: getbighead()),
            ),
            SizedBox(height: 35),

            // Email Field
            Text(
              'Email',
              style: email_n_password(),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _emailController, // Assign controller
              decoration: InputDecoration(
                hintText: 'Enter Email',
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Password Field
            Text(
              'Password',
              style: email_n_password(),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _passwordController, // Assign controller
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter Password',
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 10),

            // Forget Password
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Add Forget Password functionality here
                },
                child: Text(
                  'Forget Password?',
                  style: forget_pass_style(),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Login Button
            ElevatedButton(
              onPressed: _handleLogin, // Call _handleLogin on press
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0CB33B),
                padding: EdgeInsets.symmetric(vertical: 13),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 70),

            // Password Reset Information
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Text(
                "Need to reset your password? Call or text xxx-xxx-xxxx",
                style: TextStyle(fontSize: 14, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Text(
                "© 2024 Graystone Gear LLC.  All Rights Reserved. Support: support@graystonegear.com",
                style: TextStyle(fontSize: 9, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
