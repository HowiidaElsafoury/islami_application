import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HadethView extends StatelessWidget {
  HadethView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/hadith_header-1.png"),
          Divider(
            thickness: 2.1,
            indent: 10,
            endIndent: 10,
            height: 5,
            color: theme.primaryColor,
          ),
          Text(
            'الاحاديث',
            style: theme.textTheme.bodyLarge,
          ),
          Divider(
            thickness: 2.1,
            indent: 10,
            endIndent: 10,
            height: 5,
            color: theme.primaryColor,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => Text(
                "dd",
                textAlign: TextAlign.center,
              ),
              itemCount: 8,
              separatorBuilder: (context, index) => Divider(
                thickness: 2.1,
                indent: 10,
                endIndent: 10,
                height: 5,
                color: theme.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
