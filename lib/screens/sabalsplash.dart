import 'package:flutter/material.dart';

import '../main.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Use Future.delayed to add a delay of 3 seconds
    Future.delayed(Duration(seconds: 5), () {
      // After the delay, navigate to the next page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,  // Set entire screen background to white
      body: Center(
        child: Column(
          children: [
          Container(
            height: 700,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.white,  // Set the background color of the container to white
                    child: Image.asset('assets/images/splashlogo.png'),
                  ),
                  Text("Terms and Conditions "),

                ],
            ),
          ),
          Text("© 2024 Graystone Gear LLC.  All Rights Reserved." , style: TextStyle(fontSize: 9),),
          Text("Support: support@graystonegear.com", style: TextStyle(fontSize: 9),)

          ]

        ),
      ),
    );
  }
}