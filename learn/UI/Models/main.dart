// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import './models/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummy = List.generate(100, (index) {
      return Product(
          'https://picsum.photos/id/$index/200',
          faker.food.restaurant(),
          Random().nextInt(1000000),
          faker.lorem.sentence());
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Models List')),
        body: GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GridTile(
              child: Image.network(dummy[index].imageUrl),
              footer: Container(
                color: Colors.blue.withOpacity(0.7),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      dummy[index].title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text("Rp ${dummy[index].price.toString()}"),
                    Text(
                      dummy[index].desc,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: dummy.length,
        ),
      ),
    );
  }
}
