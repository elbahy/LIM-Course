import 'package:flutter/material.dart';
import 'package:lim_course/screens/shop_item_screen.dart';

class AllItem extends StatelessWidget {
  AllItem({
    super.key,
    required this.price,
    required this.descreption,
    required this.image,
    required this.itemName,
    required this.backgroundColor,
  });

  String image;
  String itemName;
  String descreption;
  String price;
  Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ItemScreen(),
            ));
      },
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width * .3,
              height: 150,
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              child: Image.asset(image),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 25, 0, 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemName,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 200,
                    child: Text(
                      descreption,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          overflow: TextOverflow.visible,
                          height: 1.5),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    price,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 25, 16, 25),
              child: Icon(Icons.favorite_outline),
            )
          ],
        ),
      ),
    );
  }
}
