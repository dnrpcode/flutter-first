import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String data = 'belum ada';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dialog')),
      body: Center(
          child: Text(
        data,
        style: TextStyle(fontSize: 35),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("klik");
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Confirm"),
                  content: Text("yakin delete?"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          print("Tidak");
                          setState(() {
                            data = "TIDAK !";
                          });
                          Navigator.of(context).pop(false);
                        },
                        child: Text("Tidak")),
                    TextButton(
                        onPressed: () {
                          print("YA");
                          setState(() {
                            data = "YA !";
                          });
                          Navigator.of(context).pop(true);
                        },
                        child: Text("Ya"))
                  ],
                );
              }).then((value) => print("ini then ${value}"));
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
