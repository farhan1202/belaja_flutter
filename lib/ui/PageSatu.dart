import 'package:flutter/material.dart';
import 'package:flutter_application/controller/loginController.dart';
import 'package:flutter_application/routes/app_route.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final loginC = Get.find<LoginController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: loginC.emailC,
              decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Obx(() => TextField(
                  controller: loginC.passC,
                  obscureText: loginC.hidden.value,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () => loginC.hidden.toggle(),
                        icon: Icon((loginC.hidden.value)
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye)),
                    hintText: "Passrowd",
                    border: OutlineInputBorder(),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  loginC.login(loginC.emailC.text, loginC.passC.text);
                },
                child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
