import 'package:flutter/material.dart';
import 'package:islami_application/modules/hadeth/hadeth_view.dart';

class HadethDetails extends StatefulWidget {
  HadethDetails({super.key});

  static String routeName = 'Hadeth-details';

  @override
  State<HadethDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<HadethDetails> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethContent;
    var theme = Theme.of(context);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg3 (1).png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          margin: EdgeInsets.only(left: 30, right: 30, top: 30),
          width: 354,
          height: 652,
          decoration: BoxDecoration(
            color: Color(0xffF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                args.title,
                style: theme.textTheme.bodyLarge,
              ),
              Divider(
                thickness: 1,
                indent: 40,
                endIndent: 40,
                height: 5,
                color: theme.primaryColor,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    args.content,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
                  ),
                  itemCount: 1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
