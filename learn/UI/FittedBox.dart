// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flexible and Expanded')),
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 300,
          height: 100,
          child: Center(
            child: FittedBox(
              //auto resized child image juga bisa
              child: Text(
                "hallooooooooooooooooooooooooooooooo",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
