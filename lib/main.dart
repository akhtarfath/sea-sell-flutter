import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sea_sell/screens/home_screen.dart';
import 'package:sea_sell/widgets/bottom_nav_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
