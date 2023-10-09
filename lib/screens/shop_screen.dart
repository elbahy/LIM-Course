import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lim_course/cubit/fav_cubit.dart';
import 'package:lim_course/cubit/fav_state.dart';
import 'package:lim_course/models/shop_item_model.dart';
import 'package:lim_course/screens/shop_item_screen.dart';
import 'package:lim_course/widgets/shop_all_item.dart';
import 'package:lim_course/widgets/shop_featured_item.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavCubit(),
      child: BlocConsumer<FavCubit, FavStates>(
        builder: (context, state) => Scaffold(
          backgroundColor: const Color.fromARGB(255, 233, 233, 233),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 20),
                    prefixIcon: const Icon(Icons.search, size: 30),
                    prefixIconColor: const Color.fromARGB(221, 36, 36, 36),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_cart_outlined,
                            color: Color.fromARGB(221, 36, 36, 36),
                            size: 25,
                          )),
                    ),
                    Positioned(
                      top: -5,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                        child: const Text(
                          '1',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 32,
                    height: MediaQuery.of(context).size.height * .18,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      gradient: const LinearGradient(
                          colors: [Colors.red, Colors.orange],
                          begin: Alignment.bottomCenter,
                          end: Alignment.center),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/nike.png',
                          width: 200,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '50%',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 50),
                            ),
                            Text(
                              'Discount',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 30),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
                const SliverToBoxAdapter(
                  child: Text(
                    'Featured',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 165,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        FeaturedItem(
                          image: 'assets/nike-shoes.png',
                          backgroundColor: Colors.lime,
                          itemName: 'Nike Shoes',
                          price: r'$99',
                        ),
                        const SizedBox(width: 15),
                        FeaturedItem(
                          image: 'assets/watch.png',
                          backgroundColor: Colors.blueGrey,
                          itemName: 'Apple Watch',
                          price: r'$700',
                        ),
                        const SizedBox(width: 15),
                        FeaturedItem(
                          image: 'assets/lap.png',
                          backgroundColor: Colors.brown,
                          itemName: 'Dell Laptop',
                          price: r'$650',
                        ),
                        const SizedBox(width: 15),
                        FeaturedItem(
                          image: 'assets/watch.png',
                          backgroundColor: Colors.deepOrange,
                          itemName: 'Apple Watch',
                          price: r'$700',
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
                const SliverToBoxAdapter(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('All',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('See All',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                      ]),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
                SliverList.builder(
                  itemBuilder: (context, index) => AllItem(
                    item: items[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemScreen(
                            item: items[index],
                          ),
                        ),
                      );
                    },
                    favPressed: () {
                      BlocProvider.of<FavCubit>(context).favActive(index);
                    },
                  ),
                  itemCount: items.length,
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: 0,
            unselectedItemColor: Colors.black54,
            selectedItemColor: Colors.orange,
            iconSize: 30,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: 'Profile'),
            ],
          ),
        ),
        listener: ((context, state) {}),
      ),
    );
  }
}
