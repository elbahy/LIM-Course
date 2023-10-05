import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
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
            child: Image.asset('assets/headset.png'),
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
                  const Text(
                    'Magic Headset',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    r'$97',
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
                  Icon(Icons.star, color: Colors.yellow[900], size: 20),
                  Icon(Icons.star, color: Colors.yellow[900], size: 20),
                  Icon(Icons.star, color: Colors.yellow[900], size: 20),
                  Icon(Icons.star, color: Colors.yellow[900], size: 20),
                  Icon(Icons.star,
                      color: Color.lerp(Colors.yellow[900], Colors.white, .5),
                      size: 20),
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
              const SizedBox(
                height: 100,
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                  style: TextStyle(color: Colors.grey, height: 1.5),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const Text(
                    'Total: ',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    r'$194',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 214, 214, 214),
                          elevation: 0),
                      child: const Text('-',
                          style:
                              TextStyle(color: Colors.black54, fontSize: 18)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(2),
                    color: const Color.fromARGB(255, 214, 214, 214),
                    width: 30,
                    height: 35,
                    child: const Center(
                      child: Text(
                        '02',
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 30,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 214, 214, 214),
                          elevation: 0,
                        ),
                        child: const Text(
                          '+',
                          style: TextStyle(color: Colors.black54, fontSize: 18),
                        ),
                      )),
                ],
              ),
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
    );
  }
}
