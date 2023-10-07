import 'package:flutter/material.dart';
import 'package:lim_course/models/shop_item_model.dart';

class AllItem extends StatelessWidget {
  AllItem({
    required this.item,
    required this.onTap,
    super.key,
  });

  Item item;

  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
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
                      color: item.backgroundColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                  child: Image.asset(item.image),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 25, 0, 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.itemName,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          item.descreption,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            overflow: TextOverflow.visible,
                            height: 1.5,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Text(
                            r'$'
                            '${item.price}',
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 25, 16, 25),
                  child: Column(
                    children: [
                      (item.fav)
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : const Icon(
                              Icons.favorite_outline,
                            ),
                      const Spacer(),
                      Row(
                        children: item.rateIcons(iconSize: 10),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 15)
      ],
    );
  }
}
