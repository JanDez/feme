import 'package:flutter/material.dart';

const colorList = <Color>[
  Color(0xFFF1F4F8),
  Colors.green,
  Colors.teal,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.deepOrange,
  Colors.pink
];

// late Color primary = const Color(0xFF262C9C);
// late Color secondary = const Color(0xFF0F0D35);
// late Color tertiary = const Color(0xFFFDC128);
// late Color alternate = const Color(0xFF70020A);
// late Color primaryText = const Color(0xFF212121);
// late Color secondaryText = const Color(0xFF57636C);
// late Color primaryBackground = const Color(0xFFF1F4F8);
// late Color secondaryBackground = const Color(0xFFFFFFFF);
// late Color accent1 = const Color(0xFF616161);
// late Color accent2 = const Color(0xFF757575);
// late Color accent3 = const Color(0xFFE0E0E0);
// late Color accent4 = const Color(0xFFEEEEEE);
// late Color success = const Color(0xFF04A24C);
// late Color warning = const Color(0xFFFCDC0C);
// late Color error = const Color(0xFFE21C3D);
// late Color info = const Color(0xFF1C4494);

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected color must be greater then 0');

  ThemeData theme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
