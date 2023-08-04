import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sea_sell/screens/home_screen.dart';
import 'package:sea_sell/widgets/section_title_widget.dart';

import '../components/custom_button_component.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5E5E5),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    alignment: Alignment.center,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Warehouse",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF17161B),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Menggambarkan betapa\npentingnya sebuah persediaan",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xFF17161B),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      width: 270,
                      height: 340,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFC4C4C4).withOpacity(1),
                            blurRadius: 30,
                            offset: const Offset(0, 25),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/detail.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 80),
                    sectionTitle(title: "Set Bid"),
                    const SizedBox(height: 8),
                    TextField(
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                        signed: false,
                      ),
                      style: GoogleFonts.manrope(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF414B1A),
                      ),
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        filled: true,
                        fillColor: const Color(0xFFFFFFFF),
                        hintText: "530.099",
                        hintStyle: GoogleFonts.manrope(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414B1A),
                        ),
                        prefixIcon: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/bitcoin.png",
                            width: 26,
                            height: 26,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45),
                          borderSide: const BorderSide(
                            color: Color(0xFFA1A1B1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45),
                          borderSide: const BorderSide(
                            color: Color(0xFFA1A1B1),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: customButton(context, "Place Bid", () {}),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
