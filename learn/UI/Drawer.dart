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
        home: Scaffold(
          appBar: AppBar(title: Text('Mapping List')),
          drawer: Drawer(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    height: 100,
                    color: Colors.blue,
                    alignment: Alignment.bottomLeft,
                    child: Text("Settings",
                        style: TextStyle(color: Colors.white, fontSize: 20))),
                Container(
                  height: 700,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Icon(Icons.home),
                        title: Text('setting item'),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          body: Center(
            child: Text(
              "page nih",
              style: TextStyle(fontSize: 60),
            ),
          ),
        ));
  }
}
