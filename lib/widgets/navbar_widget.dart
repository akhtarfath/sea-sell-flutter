import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "SeaSell",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF17161B),
                ),
              ),
              Text(
                "Find Your NFTs Today",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xFF17161B),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/cart.png",
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 20),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE41F89),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Image.asset(
                    "assets/images/bell.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
