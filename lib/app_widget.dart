import 'package:flutter/material.dart';
import 'package:todo_lopes/app/controllers/auth_controller.dart';
import 'package:todo_lopes/app/shared/themes/themes.dart';
import 'package:todo_lopes/app/views/auth_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = AuthController();
    return MaterialApp(
      title: 'Todo Lopes',
      theme: theme,
      home: ValueListenableBuilder(
        valueListenable: authController.isSignedIn,
        builder: (context, value, _) {
          if (value == true) {
            return const Scaffold(
              body: Center(
                child: Text('Home'),
              ),
            );
          } else {
            return const AuthPage();
          }
        },
      ),
    );
  }
}
