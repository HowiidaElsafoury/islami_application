import 'package:flutter/material.dart';
import 'package:islami_application/core/application_theme.dart';
import 'package:islami_application/layouts/home_layout.dart';
import 'package:islami_application/modules/hadeth/hadeth_details.dart';
import 'package:islami_application/modules/quraan/widget/quran_details.dart';
import 'package:islami_application/modules/splash_screen.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
        QuranDetails.routeName: (context) => QuranDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
    );
  }
}
