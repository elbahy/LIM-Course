import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lim_course/cubit/fav_cubit.dart';
import 'package:lim_course/cubit/fav_state.dart';
import 'package:lim_course/models/shop_item_model.dart';

class AllItem extends StatelessWidget {
  AllItem({
    required this.item,
    required this.onTap,
    required this.favPressed,
    super.key,
  });

  Item item;

  Function() onTap;
  Function() favPressed;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavCubit(),
      child: BlocConsumer<FavCubit, FavStates>(
        builder: (context, state) {
          return Column(
            children: [
              InkWell(
                onTap: onTap,
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
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
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
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
                                ? IconButton(
                                    icon: const Icon(Icons.favorite),
                                    onPressed: favPressed,
                                    color: Colors.red,
                                  )
                                : IconButton(
                                    icon: const Icon(Icons.favorite_outline),
                                    onPressed: favPressed,
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
        },
        listener: (context, state) {},
      ),
    );
  }
}
