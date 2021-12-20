import 'package:flutter/material.dart';
import 'package:flutter_application/Controller/CounterController.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final c = Get.find<CounterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Obx(
        () => Text(
          "angka " + c.counter.toString(),
          style: TextStyle(fontSize: 35),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: Text("+"),
        onPressed: () {
          c.changeTheme();
        },
      ),
    );
  }
}
