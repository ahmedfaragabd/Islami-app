import 'package:flutter/material.dart';
import 'package:islamic_app/config/application_theme_manger.dart';
import 'package:islamic_app/layout/layout_view.dart';
import 'package:islamic_app/moduls/splash/page/splash_view.dart';

import 'moduls/hadeth/page/hadeth_details_view.dart';
import 'moduls/quran/page/quran_details_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Islamic App",
      theme: ApplicationThemeManger.LightTheme,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
        QuranDetailsView.routeName: (context) => const QuranDetailsView(),
        HadethDetailsView.routeName: (context) => const HadethDetailsView(),
      },
    );
  }
}
