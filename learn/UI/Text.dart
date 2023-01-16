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
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("hallo gaes"),
        ),
        body: Center(
          child: Text(
            "Hallodfsdf dsfhsdifhosf sdfjoashdfiahsofhoishadofhisodhfoihsdofihoiashfohsaidhfoihsoihfidfiosdhfhs dhfhodsh",
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.blue, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
