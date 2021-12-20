import 'package:flutter/material.dart';
import 'package:flutter_application/routes/app_route.dart';
import 'package:get/get.dart';

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Dua"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.page3);
                },
                child: Text("Next Page")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Back Page")),
          ],
        ),
      ),
    );
  }
}
