// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> mycolor = [
    Colors.red,
    Colors.amber,
    Colors.black,
    Colors.green,
    Colors.blue,
  ];

  final List<Widget> mylist = List.generate(
      100,
      (index) => ListTile(
            title: Text(
              "Dani Nur Ramadhan P",
              style: TextStyle(color: Colors.white70),
            ),
            subtitle: Text(
              "${index + 1} hallo dan, lagi ngapain dfjdsafioisd foisadiofuio weoi",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white70),
            ),
            leading: CircleAvatar(),
            trailing: Text(
              "17:00 PM",
              style: TextStyle(color: Colors.white70),
            ),
            onTap: () => {log('halooo')},
          ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("List Tile"),
            backgroundColor: Colors.black,
          ),
          body: Container(
              color: Colors.black87,
              child: ListView(
                children: mylist,
              ))),
    );
  }
}
