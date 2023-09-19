import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  const CustomButton2({
    this.backgroundColor = Colors.white,
    this.iconColor = const Color.fromARGB(255, 197, 197, 197),
    required this.buttonIcon,
    required this.iconName,
    Key? key,
  }) : super(key: key);

  final Color backgroundColor;
  final Color iconColor;
  final IconData buttonIcon;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(.5),
              backgroundColor:
                  MaterialStateProperty.all<Color>(backgroundColor),
              fixedSize: MaterialStateProperty.all<Size>(const Size(100, 100)),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)))),
          onPressed: () {},
          child: Icon(
            buttonIcon,
            size: 45,
            color: iconColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          iconName,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
