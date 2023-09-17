import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/Core/Colors/colors.dart';

class NumberedCardwithNumber extends StatelessWidget {
  final int index;
  const NumberedCardwithNumber({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BorderedText(
        strokeWidth: 3.0,
        strokeColor: kcolor,
        child: Text("${index + 1}",
            style: const TextStyle(
              fontSize: 100,
              color: kblackcolor,
              decoration: TextDecoration.none,
            )));
  }
}
