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
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    final appbar = AppBar(title: Text('Mapping List'));
    final bodyHeight = MediaQueryHeight -
        appbar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: AppBar(title: Text('Flexible and Expanded')),
      body: Container(
        width: MediaQueryWidth,
        height: bodyHeight * 0.3,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Mycontainer(MediaQueryWidth),
            Mycontainer(MediaQueryWidth),
            Mycontainer(MediaQueryWidth),
          ],
        ),
      ),
    );
  }
}

class Mycontainer extends StatelessWidget {
  final double widthApp;
  Mycontainer(this.widthApp);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: widthApp * 0.3,
          height: constraints.maxHeight * 0.3,
          color: Colors.amber,
        );
      },
    );
  }
}
