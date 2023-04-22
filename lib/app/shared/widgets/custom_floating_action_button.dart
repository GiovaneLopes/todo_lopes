import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget? child;
  final double? elevation;
  const CustomFloatingActionButton(
      {super.key, this.onPressed, this.child, this.elevation});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      elevation: elevation,
      child: child,
    );
  }
}
