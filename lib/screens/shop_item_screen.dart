import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lim_course/models/shop_item_model.dart';
import 'package:lim_course/shop_cubit/shop_order_count_cubit.dart';
import 'package:lim_course/shop_cubit/shop_order_count_state.dart';

class ItemScreen extends StatelessWidget {
  ItemScreen({required this.item, super.key});

  late Item item;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderCounterCubit(),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 233, 233, 233),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: const Text(
            'Product Details',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: (item.fav)
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 30,
                    )
                  : const Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                      size: 30,
                    ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height * .45,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(item.image),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .45,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.itemName,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      r'$'
                      '${item.price}',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.yellow[900],
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Row(
                      children: item.rateIcons(iconSize: 20),
                    ),
                    const Spacer(),
                    const Text(
                      '4.5 (20 reviewes)',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                  child: Divider(
                      color: Color.fromARGB(255, 228, 228, 228), thickness: 1),
                ),
                SizedBox(
                  height: 100,
                  child: Text(
                    item.descreption,
                    style: const TextStyle(color: Colors.grey, height: 1.5),
                  ),
                ),
                const SizedBox(height: 15),
                BlocConsumer<OrderCounterCubit, OrderCountStates>(
                    builder: (context, state) {
                      return Row(
                        children: [
                          const Text(
                            'Total: ',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            r'$'
                            '${BlocProvider.of<OrderCounterCubit>(context).x * item.price}',
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 30,
                            child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<OrderCounterCubit>(context)
                                    .decrement();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 214, 214, 214),
                                  elevation: 0),
                              child: const Text('-',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(2),
                            color: const Color.fromARGB(255, 214, 214, 214),
                            width: 30,
                            height: 35,
                            child: Center(
                              child: Text(
                                '${BlocProvider.of<OrderCounterCubit>(context).x}',
                              ),
                            ),
                          ),
                          SizedBox(
                              width: 30,
                              child: ElevatedButton(
                                onPressed: () {
                                  BlocProvider.of<OrderCounterCubit>(context)
                                      .increment();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 214, 214, 214),
                                  elevation: 0,
                                ),
                                child: const Text(
                                  '+',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18),
                                ),
                              )),
                        ],
                      );
                    },
                    listener: (context, state) {}),
                const Spacer(),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[900]),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_cart_outlined, color: Colors.black),
                        SizedBox(width: 15),
                        Text(
                          'Add to Cart',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
