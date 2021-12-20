import 'package:flutter/material.dart';
import 'package:flutter_application/routes/app_route.dart';
import 'package:get/get.dart';

class PageTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Tiga"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.offAllNamed(Routes.home);
            },
            child: Text("Back to PageSatu")),
      ),
    );
  }
}
