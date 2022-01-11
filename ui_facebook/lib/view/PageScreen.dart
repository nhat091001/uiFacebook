import 'package:flutter/material.dart';

class PageScreen extends StatefulWidget {
  const PageScreen({Key? key}) : super(key: key);

  @override
  _PageScreenState createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Text('Màn hình Page'),
        ),
      ),
    );
  }
}
