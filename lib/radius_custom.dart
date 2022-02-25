import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: CustomBorder(20).side.width)),
      child: Text(
        'aa',
        maxLines: MaxLines.maximum.index,
      ),
    );
  }
}

class CustomBorder extends RoundedRectangleBorder {
  CustomBorder([double? value]) : super(borderRadius: BorderRadius.circular(value ?? 20));

  CustomBorder.low() : super(borderRadius: BorderRadius.circular(10), side: const BorderSide(width: 2));
}

enum MaxLines {
  zero, //0
  normalLine, //1
  multiNormal, //2
  maximum //3
}

extension MaxLinesExtension on MaxLines {
  void name(args) {}
}
