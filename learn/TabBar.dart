// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      text: "Tab 1",
      icon: Icon(Icons.bento),
    ),
    Tab(
      text: "Tab 2",
      icon: Icon(Icons.home),
    ),
    Tab(
      text: "Tab 3",
      icon: Icon(Icons.bug_report),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: myTab.length,
            child: Scaffold(
              appBar: AppBar(
                title: Text('Mapping List'),
                bottom: TabBar(
                  tabs: myTab,
                ),
              ),
              body: const TabBarView(
                children: [
                  Center(
                    child: Text(
                      'Tab 1',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Tab 2',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Tab 3',
                      style: TextStyle(fontSize: 40),
                    ),
                  )
                ],
              ),
            )));
  }
}
