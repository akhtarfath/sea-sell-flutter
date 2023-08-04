import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sea_sell/models/recent_bid_model.dart';

class MyRecentBid extends StatelessWidget {
  const MyRecentBid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/${recentBids[index].image}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recentBids[index].name,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF17161B),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        recentBids[index].date,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF6A6C7C),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/bitcoin.png",
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "${recentBids[index].bidAmount}",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF17161B),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            index == recentBids.length - 1
                ? const SizedBox(height: 16)
                : const SizedBox(height: 0),
          ],
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemCount: recentBids.length,
      ),
    );
  }
}
