// // ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// // C:\Users\A.T.Store\AppData\Local\Android\Sdk\platform-tools
// void main() {
//   runApp(const MyApp());
// }

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App1(),
    );
  }
}

class App1 extends StatelessWidget {
  const App1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Abdulrahman Data",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        leading: TextButton(
          child: const Icon(
            Icons.person,
            color: Colors.black,
            size: 19,
          ),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 80),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(150),
                border: Border.all(color: Colors.black, width: 4),
              ),
              width: 230,
              height: 230,
              child: ClipOval(
                child: Image.asset(
                  "assets/01.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 210,
              height: 50,
              margin: const EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 3,
                    blurRadius: 6,
                  )
                ],
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(15),
              ),
              //alignment: Alignment.center,
              child: const Text(
                "Eng.Abdulrahman Ahmed",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            Container(
              width: 170,
              height: 50,
              margin: const EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 3,
                    blurRadius: 6,
                  )
                ],
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15)),
              ),
              alignment: Alignment.center,
              child: const Text(
                "+201095946197",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
