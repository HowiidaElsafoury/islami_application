import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_application/layouts/home_layout.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String routeName = "Splash-screen";

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, HomeLayout.routeName);
      },
    );
    return Scaffold(
      body: Image.asset(
        'assets/images/splash.png',
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
