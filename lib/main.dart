import 'package:flutter/material.dart';
import 'package:flutter_application/controller/loginController.dart';
import 'package:flutter_application/routes/app_page.dart';
import 'package:flutter_application/routes/app_route.dart';
import 'package:flutter_application/translations/translation.dart';
import 'package:flutter_application/ui/PageSatu.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

bool isViewTutor;
bool isLogin;
void main() async {
  await GetStorage.init();
  isViewTutor = GetStorage().read('onboarding');
  isLogin = GetStorage().read('isLogin');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final loginC = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: (isViewTutor == true)
          ? (isLogin == true)
              ? Routes.page2
              : Routes.home
          : Routes.onboarding,
      getPages: AppPage.pages,
      translations: AppTranslation(),
      locale: Locale('en'),
    );
  }
}
