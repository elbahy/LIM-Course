import 'package:flutter/material.dart';

class TimeLineTile extends StatelessWidget {
  TimeLineTile(
      {required this.isFirst,
      required this.isLast,
      required this.isPast,
      super.key});

  bool isFirst;
  bool isLast;
  bool isPast;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 50,
      child: TimeLineTile(
        isFirst: isFirst,
        isLast: isLast,
        isPast: isPast,
      ),
    );
  }
}
