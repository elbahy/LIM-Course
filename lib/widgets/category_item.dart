import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    required this.itemName,
    super.key,
  });

  final String itemName;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      alignment: Alignment.center,
      width: 130,
      decoration: BoxDecoration(
          color: const Color(0xff7BC1B7),
          borderRadius: BorderRadius.circular(15)),
      child: Text(
        itemName,
        style: const TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
      ),
    );
  }
}
