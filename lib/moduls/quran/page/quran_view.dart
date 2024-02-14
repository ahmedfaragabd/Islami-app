import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/moduls/quran/page/quran_details_view.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "quranDetails";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsData;
    if (versesList.isEmpty) LoadData(args.suraNumber);

    return Stack(
      children: [
        Image.asset(
          "assets/images/main_background.png",
          height: mediaQuery.height,
          width: mediaQuery.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: const Text("إسلامي"),
          ),
          body: Container(
            width: mediaQuery.width,
            height: mediaQuery.height,
            margin: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 80),
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "سورة ${args.suraName}",
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.play_circle_filled_rounded,
                      size: 28,
                    ),
                  ],
                ),
                Divider(
                  indent: 30,
                  endIndent: 30,
                ),
                Expanded(
                    child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    "{${index + 1}} ${versesList[index]}",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
                  ),
                  itemCount: versesList.length,
                ))
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> LoadData(String suraNumber) async {
    String content =
        await rootBundle.loadString("assets/files/$suraNumber.txt");
    versesList = content.split("\n");
    setState(() {});
  }
}