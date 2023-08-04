import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sea_sell/components/custom_button_component.dart';

import '../models/slider_model.dart';
import '../screens/detail_screen.dart';

Widget imageSlider() {
  return SizedBox(
    height: 440,
    width: double.infinity,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Row(
        children: [
          index == 0 ? const SizedBox(width: 20) : const SizedBox(width: 0),
          Container(
            width: 270,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            margin: const EdgeInsets.only(bottom: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFC4C4C4).withOpacity(1),
                  blurRadius: 10,
                  offset: const Offset(0, 10),
                ),
              ],
              image: DecorationImage(
                image: AssetImage("assets/images/${sliders[index].image}.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sliders[index].isTrending == true
                    ? Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 7,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF5A1FE4),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Text(
                          "Trending",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : const SizedBox(),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    customButton(context, "Bid Now", () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreen(),
                        ),
                      );
                    }),
                    const SizedBox(width: 18),
                    Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset(
                        "assets/images/heart.png",
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          index == sliders.length - 1
              ? const SizedBox(width: 20)
              : const SizedBox(width: 0),
        ],
      ),
      separatorBuilder: (context, index) => const SizedBox(width: 20),
      itemCount: sliders.length,
    ),
  );
}
