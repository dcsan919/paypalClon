import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    textTheme: GoogleFonts.poppinsTextTheme(),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black,
    textTheme: GoogleFonts.poppinsTextTheme(
      ThemeData.dark().textTheme,
    ),
  );
}
