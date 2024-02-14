import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/moduls/hadeth/page/hadeth_details_view.dart';

class HadethView extends StatefulWidget {
  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethDetailsData> allHadethData = [];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    if (allHadethData.isEmpty) loadData();
    return Column(
      children: [
        Image.asset(
          "assets/images/hadeth_header.png",
          height: mediaQuery.height * 0.2,
        ),
        Divider(),
        Text(
          "الأحاديث",
          style: theme.textTheme.bodyLarge,
        ),
        Divider(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, HadethDetailsView.routeName,
                    arguments: allHadethData[index]);
              },
              child: Text(
                allHadethData[index].title,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            itemCount: allHadethData.length,
          ),
        )
      ],
    );
  }

  Future<void> loadData() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadeth = content.split("#");
    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadeth = allHadeth[i].trim();
      int titleLength = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, titleLength);
      String content = singleHadeth.substring(titleLength + 1);
      HadethDetailsData hadethDetailsData = HadethDetailsData(
        title,
        content,
      );
      allHadethData.add(hadethDetailsData);
      setState(() {});
    }
  }
}

class HadethDetailsData {
  final String title;
  final String content;

  HadethDetailsData(this.title, this.content);
}
