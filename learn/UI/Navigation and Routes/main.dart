// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './pages/page_one.dart';
import './pages/page_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageOne(),
      initialRoute: PageOne.routeName,
      routes: {
        PageOne.routeName: (context) => PageOne(),
        PageTwo.routeName: (context) => PageTwo(),
      },
    );
  }
}
