import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TasbehView extends StatelessWidget {
  const TasbehView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "Tasbeh",
        style: GoogleFonts.elMessiri(fontSize: 30),
      ),
    );
  }
}
