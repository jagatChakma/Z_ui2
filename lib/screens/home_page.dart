import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "Home_Page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: SizedBox(), // to height back icon
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Text("LogIn success! You are in Home page"),
      ),
    );
  }
}
