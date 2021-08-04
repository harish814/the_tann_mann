import 'package:flutter/material.dart';
import 'dart:async';
import 'main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
      Timer(Duration(seconds: 2), () {
        return Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => LogginScreen()),
                (Route<dynamic> route) => false);
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset(
          'images/tannmann.png'
        ),
      ),
    );
  }
}