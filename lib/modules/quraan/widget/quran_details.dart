import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/modules/quraan/quran_view.dart';

class QuranDetails extends StatefulWidget {
  QuranDetails({super.key});

  static String routeName = 'Quran-details';

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    var theme = Theme.of(context);
    if (content.isEmpty) readFiles(args.suraNumber);
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    args.suraName,
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.play_circle),
                ],
              ),
              Divider(
                thickness: 1,
                indent: 40,
                endIndent: 40,
                height: 5,
                color: theme.primaryColor,
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    content,
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

  readFiles(String index) async {
    String text = await rootBundle.loadString("assets/files/$index.txt");
    content = text;
    setState(() {
      allVerses = content.split('/n');
    });
    print(text);
  }
}
