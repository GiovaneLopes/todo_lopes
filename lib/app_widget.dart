import 'package:flutter/material.dart';
import 'package:todo_lopes/app/shared/themes/themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo Lopes',
      theme: theme,
      home: Container(),
    );
  }
}
