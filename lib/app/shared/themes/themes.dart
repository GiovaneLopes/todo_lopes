import 'package:flutter/material.dart';
part './color_schemes.g.dart';
part './custom_color.g.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: _lightColorScheme,
  appBarTheme: const AppBarTheme(
    backgroundColor: salmonColor,
  ),
);
