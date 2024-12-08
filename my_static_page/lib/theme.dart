import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myTheme = ThemeData(
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.montserrat(
      fontSize: 16.0, // Normal font size
    ),
    headlineLarge: GoogleFonts.montserrat(
      fontWeight: FontWeight.bold, //for the header
    ),
    bodySmall: GoogleFonts.montserrat(
      fontSize: 14.0, // Small font size for footer
    ),
  ),
);
