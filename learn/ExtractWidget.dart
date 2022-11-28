// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(title: Text('component')),
            body: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ChatItem(
                  imageUrl: 'https://picsum.photos/id/$index/200/300',
                  title: faker.person.name(),
                  subtitle: faker.lorem.sentence(),
                );
              },
            )));
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ChatItem(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text("10:00 PM"),
    );
  }
}
