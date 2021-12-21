import 'package:get/get.dart';

class CountController extends GetxController {
  var value = 0.obs;

  void Increment() => value++;
}
