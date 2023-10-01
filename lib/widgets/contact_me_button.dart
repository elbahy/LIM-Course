import 'package:flutter/material.dart';

class ContactMeButton extends StatelessWidget {
  const ContactMeButton({
    required this.color,
    required this.icon,
    required this.text,
    required this.bgColor,
    super.key,
  });

  final IconData icon;
  final String text;
  final Color color;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: bgColor,
            child: IconButton(
              onPressed: () {},
              color: color,
              highlightColor: Colors.amber,
              icon: Icon(
                icon,
                size: 30,
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'Koll',
                color: color,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
