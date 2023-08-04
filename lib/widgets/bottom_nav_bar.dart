import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF18093A),
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/profile.png',
            width: 24,
            height: 24,
          ),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/news.png',
            width: 24,
            height: 24,
          ),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/dashboard.png',
            width: 24,
            height: 24,
          ),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/nft_collection.png',
            width: 24,
            height: 24,
          ),
          label: 'Collection',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/help.png',
            width: 24,
            height: 24,
          ),
          label: 'Help',
        ),
      ],
      selectedItemColor: const Color(0xFFFFFFFF),
      unselectedItemColor: const Color(0xFF6A6C7C),
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }
}
