import 'package:flutter/cupertino.dart';
import 'package:flutter_application/routes/app_route.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  var hidden = true.obs;
  var isAuth = false.obs;

  Map<String, String> _dataUser = {
    'email': 'hafifi@gmail.com',
    'password': 'admin'
  };

  TextEditingController emailC;
  TextEditingController passC;

  void dialogError(String msg) {
    Get.defaultDialog(
      title: "Terjadi kesalahan",
      middleText: msg,
    );
  }

  void login(String email, String pass) async {
    if (email != '' && pass != '') {
      if (GetUtils.isEmail(email)) {
        if (email == _dataUser['email'] && pass == _dataUser['password']) {
          Get.offAllNamed(Routes.page2);
          GetStorage().write('isLogin', true);
        } else {
          dialogError("Email / password salah");
        }
      } else {
        dialogError("Format email tidak sesuai");
      }
    } else {
      dialogError("Harap Isi Form");
    }
  }

  @override
  void onInit() {
    emailC = TextEditingController();
    passC = TextEditingController();
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    emailC.dispose();
    passC.dispose();
    // TODO: implement onClose
    super.onClose();
  }
}
