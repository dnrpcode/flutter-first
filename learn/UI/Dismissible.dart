// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Faker faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(title: Text('Dismissable')),
            body: ListView.builder(
                padding: EdgeInsets.all(6),
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Dismissible(
                      onDismissed: (direction) {
                        if (direction == DismissDirection.endToStart) {
                          print("on dismis end");
                        } else {
                          print("on dismis start");
                        }
                      },
                      confirmDismiss: (direction) {
                        return showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Confirm'),
                                content:
                                    Text("Are you sure to delete this item?"),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(false);
                                      },
                                      child: Text("Tidak")),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(true);
                                      },
                                      child: Text("Ya"))
                                ],
                              );
                            });
                      },
                      key: Key(index.toString()),
                      // direction: DismissDirection.endToStart,
                      background: Container(
                        color: Colors.red,
                        child: Icon(
                          Icons.delete,
                          size: 25,
                        ),
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 10),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Center(
                            child: Text(index.toString()),
                          ),
                        ),
                        title: Text(faker.person.name()),
                        subtitle: Text(faker.lorem.sentence()),
                      ));
                })));
  }
}
