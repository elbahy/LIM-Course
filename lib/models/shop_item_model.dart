import 'package:flutter/material.dart';

class Item {
  String image;
  String itemName;
  String descreption;
  double price;
  Color backgroundColor;
  bool fav;
  int rate;

  Item(
      {required this.backgroundColor,
      required this.descreption,
      required this.image,
      required this.itemName,
      required this.price,
      required this.rate,
      this.fav = false});

  List<Icon> rateIcons({required double iconSize}) {
    List<Icon> icons = [];
    icons.addAll(List.filled(
        rate,
        Icon(
          Icons.star,
          size: iconSize,
          color: Colors.yellow[900],
        )));
    return icons;
  }
}

List<Item> items = [
  Item(
      itemName: 'Audio Speaker',
      descreption:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
      image: 'assets/speaker.png',
      price: 59,
      rate: 4,
      backgroundColor: Colors.orange),
  Item(
      itemName: 'Iphone X',
      descreption:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
      image: 'assets/iphone.png',
      price: 199,
      rate: 3,
      backgroundColor: Colors.cyan,
      fav: true),
  Item(
      itemName: 'Nike Shoes',
      descreption:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
      image: 'assets/nike-shoes.png',
      price: 99,
      rate: 5,
      backgroundColor: Colors.lime,
      fav: true),
  Item(
    itemName: 'Iphone X',
    descreption:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
    image: 'assets/iphone.png',
    price: 205,
    rate: 2,
    backgroundColor: Colors.red,
  )
];
