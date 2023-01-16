// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      'name': "Dani",
      "age": 19,
      'favColor': ['red', 'blue', 'black', 'yellow'],
    },
    {
      'name': "Sandhika",
      "age": 23,
      'favColor': [
        'red',
        'blue',
        'black',
        'yellow',
        'red',
        'blue',
        'black',
        'yellow',
        'red',
        'blue',
        'black',
        'yellow'
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(title: Text('Mapping List')),
            body: ListView(
              children: myList.map((data) {
                List myFavColor = data['favColor'];
                return Card(
                  margin: EdgeInsets.all(20),
                  color: Colors.black.withOpacity(0.1),
                  child: Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Name: ${data['name']}"),
                                  Text("Age: ${data['age']}"),
                                ],
                              )
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: myFavColor.map((color) {
                                return Container(
                                  color: Colors.amber,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 8),
                                  padding: EdgeInsets.all(10),
                                  child: Text(color),
                                );
                              }).toList(),
                            ),
                          )
                        ],
                      )),
                );
              }).toList(),
            )));
  }
}
