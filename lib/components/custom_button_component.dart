import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customButton(BuildContext context, String title, Function() route) {
  return TextButton(
    onPressed: route,
    style: TextButton.styleFrom(
      backgroundColor: const Color(0xFFD5F566),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(45),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 45,
        vertical: 5,
      ),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF414B1A),
        ),
      ),
    ),
  );
}
