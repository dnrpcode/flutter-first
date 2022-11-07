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
          appBar: AppBar(
            title: Text("List Tile"),
            backgroundColor: Colors.black87,
          ),
          body: ListView(
            children: [
              ListTile(
                title: Text("Dani Nur Ramadhan P"),
                subtitle: Text(
                  "hallo dan, lagi ngapain dfjdsafioisd foisadiofuio weoi",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                leading: CircleAvatar(),
                trailing: Text("17:00 PM"),
                onTap: () => {},
              ),
              Divider(),
              ListTile(
                title: Text("Dani Nur Ramadhan P"),
                subtitle: Text("hallo dan.."),
                leading: CircleAvatar(),
                trailing: Text("17:00 PM"),
                dense: true,
              ),
              Divider(),
            ],
          )),
    );
  }
}
