import 'package:flutter/material.dart';
import 'package:ui_facebook/screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Center(
                    child: Text(
                  'Facebook',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Email or Phone',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.blueAccent.shade700,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FlatButton(
                  color: Colors.blueAccent.shade700,
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
