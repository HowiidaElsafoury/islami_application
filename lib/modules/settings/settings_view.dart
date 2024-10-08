import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "settings",
        style: GoogleFonts.elMessiri(fontSize: 30),
      ),
    );
  }
}
