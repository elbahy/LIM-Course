import 'package:flutter/material.dart';
import 'package:lim_course/chat.dart';
import 'package:lim_course/data.dart';

class FirstTask extends StatefulWidget {
  const FirstTask({super.key});

  @override
  State<FirstTask> createState() => _FirstTaskState();
}

class _FirstTaskState extends State<FirstTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.black,
        body: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: users.length,
            itemBuilder: (context, index) => ChatWidget(
                  chat: users[index],
                )));
  }
}
