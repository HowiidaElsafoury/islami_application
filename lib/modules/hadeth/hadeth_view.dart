import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/modules/hadeth/hadeth_details.dart';

class HadethView extends StatefulWidget {
  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContent> allHadethContent = [];
  @override
  Widget build(BuildContext context) {
    if (allHadethContent.isEmpty) readfile();
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
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    HadethDetails.routeName,
                    arguments: HadethContent(
                        title: allHadethContent[index].title,
                        content: allHadethContent[index].content),
                  );
                },
                child: Text(
                  allHadethContent[index].title,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              itemCount: allHadethContent.length,
              separatorBuilder: (context, index) => Divider(
                thickness: 1.2,
                indent: 40,
                endIndent: 40,
                color: theme.primaryColor,
                height: 10,
              ),
            ),
          )
        ],
      ),
    );
  }

  readfile() async {
    String text = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadeth = text.split("#");
    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadeth = allHadeth[i].trim();
      int indexOfFirstLine = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, indexOfFirstLine);
      String content = singleHadeth.substring(indexOfFirstLine + 1);
      HadethContent hadethContent =
          HadethContent(title: title, content: content);

      allHadethContent.add(hadethContent);
      setState(() {});
      print(title);
    }
  }
}

class HadethContent {
  final String title;
  final String content;

  HadethContent({required this.title, required this.content});
}
