import 'package:flutter/material.dart';
import 'package:todo_lopes/app/shared/themes/themes.dart';

class ColorButton extends StatelessWidget {
  final bool? value;
  final Color? color;
  final Function(Color?) onPressed;
  const ColorButton(
      {super.key, this.color, required this.onPressed, this.value});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed(color);
      },
      child: Container(
        height: 42,
        width: 42,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(width: value == true ? 4 : 0, color: primaryBlue),
        ),
      ),
    );
  }
}
