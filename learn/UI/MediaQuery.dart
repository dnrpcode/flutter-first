// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

void main() {
  //LOCK ORIENTATION!
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
      appBar: appbar,
      body: Center(
        child: (isLandscape)
            ? Column(
                children: [
                  Container(
                    height: bodyHeight * 0.5,
                    width: MediaQueryWidth,
                    color: Colors.blue[100],
                  ),
                  Container(
                    height: bodyHeight * 0.5,
                    color: Colors.black12,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(),
                          title: Text("Title"),
                        );
                      },
                    ),
                  )
                ],
              )
            : Column(
                children: [
                  Container(
                    height: bodyHeight * 0.3,
                    width: MediaQueryWidth,
                    color: Colors.blue[100],
                  ),
                  Container(
                    height: bodyHeight * 0.7,
                    color: Colors.black12,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(),
                          title: Text("Title"),
                        );
                      },
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
