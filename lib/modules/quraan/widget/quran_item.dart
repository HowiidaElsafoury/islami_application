import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  final String suraName;
  final String suraNumber;

  const QuranItem(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            suraNumber,
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: 2.1,
          height: 64,
          color: theme.primaryColor,
        ),
        Expanded(
          child: Text(
            suraName,
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
