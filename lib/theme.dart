import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class breakingTheme {
  static const MaterialColor color = MaterialColor(
    _cortePrimaryValue,
    <int, Color>{
      50: Color(0xFFE3F2FD),
      100: Color(0xFFBBDEFB),
      200: Color(0xFF90CAF9),
      300: Color(0xFF64B5F6),
      400: Color(0xFF42A5F5),
      500: Color(_cortePrimaryValue),
      600: Color(0xFF1E88E5),
      700: Color(0xFF1976D2),
      800: Color(0xFF1565C0),
      900: Color(0xFF0D47A1),
    },
  );
  static const int _cortePrimaryValue = 0xFF2196F3;

  static const Color background = Color.fromRGBO(2, 102, 53, 1);

  static const Color buttonOKColor = Colors.green;

  static const Color buttonCancelColor = Colors.red;

  static ButtonStyle outlineButtonStyle({
    Color color = Colors.black,
    double padding = 24,
  }) {
    return OutlinedButton.styleFrom(
      primary: color,
      padding: EdgeInsets.symmetric(vertical: padding),
      side: BorderSide(color: color),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
    );
  }

  static ThemeData theme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: background,
    primarySwatch: color,
    primaryColor: color,
    textTheme: GoogleFonts.latoTextTheme(
      ThemeData.light().textTheme,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: outlineButtonStyle(),
    ),
    appBarTheme: ThemeData.light().appBarTheme.copyWith(
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: GoogleFonts.lato(
            fontSize: 20,
            color: Colors.black,
          ),
          centerTitle: true,
        ),
  );
}
