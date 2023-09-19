import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
    this.text, {
    required this.onPressButton,
    super.key,
  });
  final String text;
  final VoidCallback onPressButton;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressButton,
      style: ButtonStyle(
        backgroundColor:
            const MaterialStatePropertyAll<Color>(Color(0xff0B8FAC)),
        shape: MaterialStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
      ),
    );
  }
}
