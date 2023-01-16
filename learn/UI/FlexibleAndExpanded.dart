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
      body: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.red,
              child: Text("Text panjang bet nih"),
            ),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Text("Text nya"),
          ),
          Expanded(
            //Flexible fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.amber,
              child: Text("Text nya"),
            ),
          )
        ],
      ),
    );
  }
}
