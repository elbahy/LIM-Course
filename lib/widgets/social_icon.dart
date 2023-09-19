import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon(
    this.iconPath, {
    super.key,
  });
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xffD2EBE7)),
          borderRadius: BorderRadius.circular(100)),
      child: Image.asset(
        iconPath,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
