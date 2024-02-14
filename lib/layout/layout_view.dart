import 'package:flutter/material.dart';
import 'package:islamic_app/moduls/hadeth/page/hadeth_view.dart';
import 'package:islamic_app/moduls/quran/page/quran_details_view.dart';
import 'package:islamic_app/moduls/radio/page/radio_view.dart';
import 'package:islamic_app/moduls/settings/page/settings_view.dart';
import 'package:islamic_app/moduls/tasbeh/page/tasbeh_view.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "layout";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
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
            title: Text("إسلامي"),
          ),
          body: screens[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran_icn.png")),
                  label: "Quran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/hadeth_icn.png")),
                  label: "Hadeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha_icn.png")),
                  label: "Tasbeh"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio_icn.png")),
                  label: "Radio"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ],
          ),
        ),
      ],
    );
  }
}
