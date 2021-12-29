import 'package:flutter/material.dart';
import 'package:flutter_application/routes/app_route.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Dua"),
        actions: [
          IconButton(
              onPressed: () {
                Get.offAllNamed(Routes.home);
                GetStorage().write('isLogin', false);
              },
              icon: Icon(Icons.door_back_door))
        ],
      ),
    );
  }
}
