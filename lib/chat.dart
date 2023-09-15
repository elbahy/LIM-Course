import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lim_course/models/chat_model.dart';

class ChatWidget extends StatefulWidget {
  ChatWidget({
    required this.chat,
    Key? key,
  }) : super(key: key);

  ChatModel chat;

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print(widget.chat.name),
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 70,
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.chat.img),
              radius: 40,
            ),
            SizedBox(
              height: 55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.chat.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Text(
                        'Shared State',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      (int.parse(widget.chat.point) > 0)
                          ? SvgPicture.asset(
                              'assets/key.svg',
                              width: 24,
                              height: 29.2,
                              color: Colors.white,
                            )
                          : const Icon(
                              Icons.send,
                              color: Colors.white,
                            )
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            (int.parse(widget.chat.point) > 0)
                ? SizedBox(
                    height: 55,
                    child: Column(
                      children: [
                        Text(widget.chat.point,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        const Spacer(),
                        const Icon(
                          Icons.diamond,
                          color: Colors.pink,
                          size: 30,
                        )
                      ],
                    ),
                  )
                : const SizedBox(
                    height: 55,
                  )
          ],
        ),
      ),
    );
  }
}
