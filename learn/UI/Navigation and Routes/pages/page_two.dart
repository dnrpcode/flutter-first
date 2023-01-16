import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  static const routeName = '/pageTwo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page Two')),
      body: Center(child: Text("Page Two")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.keyboard_arrow_left),
      ),
    );
  }
}
