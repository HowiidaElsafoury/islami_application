import 'package:flutter/material.dart';
import 'package:islami_application/modules/hadeth/hadeth_view.dart';
import 'package:islami_application/modules/quraan/quran_view.dart';
import 'package:islami_application/modules/radio/radio_view.dart';
import 'package:islami_application/modules/settings/settings_view.dart';
import 'package:islami_application/modules/tasbeh/tasbeh_view.dart';

class HomeLayout extends StatefulWidget {
  static String routeName = "home-layout";

  HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg3 (1).png"),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('اسلامي'),
          ),
          body: screens[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                selectedIndex = index;
              });
            },
            currentIndex: selectedIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/moshaf_gold.png'),
                  ),
                  label: 'Quraan'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
                  label: 'Hadeth'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),
                  label: 'Tasbeh'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: 'Radio'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
            ],
          ),
        ));
  }
}
