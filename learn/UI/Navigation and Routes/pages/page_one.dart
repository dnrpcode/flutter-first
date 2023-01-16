import 'package:flutter/material.dart';
import './page_two.dart';

class PageOne extends StatelessWidget {
  static const routeName = '/pageOne';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Page One')),
        body: Center(child: Text("Page Onee")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed(PageTwo.routeName);
          },
          child: const Icon(Icons.keyboard_arrow_right),
        ));
  }
}
