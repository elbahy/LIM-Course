import 'package:flutter/material.dart';
import 'package:lim_course/portfolio_consts.dart';

class WorkTil extends StatelessWidget {
  const WorkTil({
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.tilColor,
    super.key,
  });

  final IconData icon;
  final String title;
  final String subTitle;
  final Color tilColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        contentPadding: const EdgeInsets.all(15),
        tileColor: const Color.fromARGB(255, 240, 240, 240),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: tilColor),
          child: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
              fontFamily: 'Koll',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: headTextColor),
        ),
        subtitle: Text(subTitle,
            style: const TextStyle(
                fontFamily: 'Koll', fontSize: 18, color: headTextColor)),
      ),
    );
  }
}
