import 'package:flutter/material.dart';

class FeaturedItem extends StatelessWidget {
  FeaturedItem({
    super.key,
    required this.image,
    required this.itemName,
    required this.backgroundColor,
    required this.price,
  });

  String image;
  String itemName;
  String price;
  Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 165,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: backgroundColor),
            child: Image.asset(
              image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 12),
            child: Text(itemName,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(price,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w500)),
                const Icon(Icons.favorite_border)
              ],
            ),
          )
        ],
      ),
    );
  }
}
