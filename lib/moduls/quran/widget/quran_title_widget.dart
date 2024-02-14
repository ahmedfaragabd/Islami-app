import 'package:flutter/material.dart';

class QuranTitleWidget extends StatelessWidget {
  final String suraName;
  final String suraNumber;

  const QuranTitleWidget(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
            child: Text(suraNumber,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium)),
        Container(
          width: 1.5,
          height: 35,
          color: theme.primaryColor,
        ),
        Expanded(
            child: Text(suraName,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium)),
      ],
    );
  }
}
