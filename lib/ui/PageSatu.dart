import 'package:flutter/material.dart';
import 'package:flutter_application/routes/app_route.dart';
import 'package:get/get.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title".tr),
        actions: [
          IconButton(
            onPressed: () => Get.updateLocale(Locale('id')),
            icon: Icon(Icons.language),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("body".tr),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                //passing argument
                // onPressed: () async {
                //   var data =
                //       await Get.to(PageDua(), arguments: "Ini dari page satu");
                //   print(data);
                // },
                onPressed: () => Get.toNamed(Routes.page2),
                child: Text("Next Page")),
          ],
        ),
      ),
    );
  }
}
