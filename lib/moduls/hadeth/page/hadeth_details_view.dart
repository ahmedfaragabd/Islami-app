import 'package:flutter/material.dart';
import 'package:islamic_app/moduls/hadeth/page/hadeth_view.dart';

class HadethDetailsView extends StatelessWidget {
  static const String routeName = "hadethDetails";

  const HadethDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethDetailsData;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Stack(children: [
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
          margin: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 60),
          padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            children: [
              Text(args.title, style: theme.textTheme.bodyMedium),
              Divider(
                indent: 30,
                endIndent: 30,
              ),
              Expanded(
                child: Text(args.content,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
