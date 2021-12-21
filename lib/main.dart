import 'package:flutter/material.dart';
import 'package:flutter_application/routes/app_page.dart';
import 'package:flutter_application/routes/app_route.dart';
import 'package:flutter_application/translations/translation.dart';
import 'package:flutter_application/ui/PageSatu.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      getPages: AppPage.pages,
      translations: AppTranslation(),
      locale: Locale('en'),
    );
  }
}
