import 'package:flutter_application/bindings/countBinding.dart';
import 'package:flutter_application/routes/app_route.dart';
import 'package:flutter_application/ui/PageDua.dart';
import 'package:flutter_application/ui/PageSatu.dart';
import 'package:flutter_application/ui/PageTiga.dart';
import 'package:get/get.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => PageSatu(),
    ),
    GetPage(
      name: Routes.page2,
      page: () => PageDua(),
      binding: CountBinding(),
    ),
    GetPage(
      name: Routes.page3,
      page: () => PageTiga(),
    ),
  ];
}
