import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  CustomTextForm({
    this.isPass = false,
    required this.hint,
    this.keyType = TextInputType.text,
    this.preIcon,
    this.sufIcon,
    this.a = 133,
    super.key,
  });
  bool isPass;
  final String hint;
  final TextInputType keyType;
  Icon? sufIcon;
  Icon? preIcon;
  int a;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: keyType,
        obscureText: isPass,
        decoration: InputDecoration(
          hintStyle: const TextStyle(fontSize: 14, color: Color(0xff858585)),
          filled: true,
          fillColor: const Color.fromARGB(100, 217, 217, 217),
          hintText: hint,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          suffixIcon: (isPass)
              ? const Icon(
                  Icons.visibility_off,
                )
              : (sufIcon != null)
                  ? sufIcon
                  : null,
          prefixIcon: (preIcon != null) ? preIcon : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: Color.fromARGB(a, 133, 133, 133),
              width: 1,
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ));
  }
}

class CustomTextForm2 extends CustomTextForm {
  CustomTextForm2({super.key, required super.hint});
}
