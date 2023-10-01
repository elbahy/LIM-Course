import 'package:flutter/material.dart';
import 'package:lim_course/portfolio_consts.dart';

class HeadText extends StatelessWidget {
  HeadText(
    this.text, {
    this.centerText = false,
    super.key,
  });
  final String text;
  bool centerText;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: (centerText) ? TextAlign.center : TextAlign.left,
      style: const TextStyle(
          fontSize: 30,
          color: headTextColor,
          fontFamily: 'Koll',
          fontWeight: FontWeight.bold),
    );
  }
}
