import 'package:flutter/material.dart';

class WatchScreen extends StatefulWidget {
  const WatchScreen({Key? key}) : super(key: key);

  @override
  _WatchScreenState createState() => _WatchScreenState();
}

class _WatchScreenState extends State<WatchScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Màn hình chính'),
        ),
        body: Container(
          child: Text('Màn hình Watch'),
        ),
      ),
    );
  }
}
