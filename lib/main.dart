import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controller/CounterController.dart';
import 'ui/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final counterC = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          home: HomePage(),
          theme: counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
        ));
  }
}
