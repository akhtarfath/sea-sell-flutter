import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sea_sell/widgets/section_title_widget.dart';

import '../widgets/image_slider_widget.dart';
import '../widgets/my_recent_bid_widget.dart';
import '../widgets/navbar_widget.dart';
import '../widgets/popular_creator_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Scrollable(
            viewportBuilder: (BuildContext context, ViewportOffset position) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const NavBar(),
                  imageSlider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: sectionTitle(title: "Popular Creators"),
                      ),
                      const SizedBox(height: 16),
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: PopularCreator(),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: sectionTitle(title: "My Recent Bids"),
                      ),
                      const SizedBox(height: 16),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: MyRecentBid(),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
