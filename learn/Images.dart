// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Image"),
          ),
          body: Center(
            child: Container(
              width: 350,
              height: 500,
              color: Colors.black,
              // child: Image.asset("assets/images/IMG_5346.jpg"),
              child: Image(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/images/IMG_5346.jpg")
                  //   image: NetworkImage(
                  //       'https://cdn.oneesports.gg/cdn-data/2022/09/Anime_OnePiece_Season13_Voyage5_MangaCover2.jpg'),
                  ),
            ),
          ),
        ));
  }
}
