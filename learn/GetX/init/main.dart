import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './controllers/counter_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final counterC = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        theme: counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  // final controller = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              // child: GetX<CounterController>( //Reactive
              child: GetBuilder<CounterController>(
            //Simple
            id: 'id1',
            init: CounterController(),
            builder: (controller) {
              return Text(
                'Counter ${controller.counter.toString()}',
                style: TextStyle(fontSize: 35),
              );
            },
          )),
          Center(
              // child: GetX<CounterController>( //Reactive
              child: GetBuilder<CounterController>(
            //Simple
            id: 'id2',
            init: CounterController(),
            builder: (controller) {
              return Text(
                'Counter ${controller.counter.toString()}',
                style: TextStyle(fontSize: 35),
              );
            },
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () => c.changeTheme(),
        onPressed: () => Get.find<CounterController>().increment(),
      ),
    );
  }
}
