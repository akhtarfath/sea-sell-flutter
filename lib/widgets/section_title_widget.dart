import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget sectionTitle({required String title}) {
  return Row(
    children: [
      Text(
        title,
        textAlign: TextAlign.left,
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF17161B),
        ),
      ),
    ],
  );
}
