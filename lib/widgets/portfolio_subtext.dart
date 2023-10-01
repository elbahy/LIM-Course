import 'package:flutter/material.dart';
import 'package:lim_course/portfolio_consts.dart';

class SubText extends StatelessWidget {
  SubText(
    this.text, {
    this.centerText = false,
    this.size = 18,
    super.key,
  });

  bool centerText;
  final String text;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: (centerText) ? TextAlign.center : TextAlign.left,
      style: TextStyle(
          fontFamily: 'Koll',
          fontSize: size,
          height: 1.7,
          color: regularTextColor),
    );
  }
}
