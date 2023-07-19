import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_lopes/app/controllers/auth_controller.dart';
import 'package:todo_lopes/app/shared/themes/themes.dart';
import 'package:todo_lopes/app/views/auth_page.dart';
import 'package:todo_lopes/app/views/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.put(AuthController());
    return GetMaterialApp(
      title: 'To-do Lopes',
      theme: theme,
      home: Obx(
        () {
          if (authController.isSignedIn.value == true) {
            return const HomePage();
          } else {
            return const AuthPage();
          }
        },
      ),
    );
  }
}
