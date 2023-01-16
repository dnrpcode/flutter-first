// ignore_for_file: prefer_const_constructors
// ? Cupertino for IOS Style

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cupertino')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  title: Text("title dialog"),
                  content: Text("content blablablabalbalbalbalbalbalbalbala"),
                  actions: [
                    TextButton(onPressed: () {}, child: Text("Yes")),
                    TextButton(onPressed: () {}, child: Text("No")),
                  ],
                );
              },
            );
          },
          child: Text('alert dialog'),
        ),
      ),
    );
  }
}
