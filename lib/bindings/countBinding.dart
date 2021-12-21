import 'package:flutter_application/controller/countController.dart';
import 'package:get/get.dart';

class CountBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CountController());
  }
}
