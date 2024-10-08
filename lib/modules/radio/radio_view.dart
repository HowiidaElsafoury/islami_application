import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "Radio",
        style: GoogleFonts.elMessiri(fontSize: 30),
      ),
    );
  }
}
