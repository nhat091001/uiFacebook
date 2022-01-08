import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_facebook/screen/login_screen.dart';

class HelloScreen extends StatefulWidget {
  const HelloScreen({Key? key}) : super(key: key);

  @override
  _HelloScreenState createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(150, 50, 150, 120),
              child: Image.asset(
                'assets/icons/facebook.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
