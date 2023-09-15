import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  SettingItem({
    required this.settingName,
    this.itemColor = Colors.black87,
    this.messagesCount = 0,
    Key? key,
  }) : super(key: key);
  String settingName;
  Color itemColor;
  int messagesCount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              settingName,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: itemColor),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          (messagesCount > 0)
              ? Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red),
                  child: Text(
                    messagesCount.toString(),
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )
              : const SizedBox(),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_sharp,
            color: Color.fromARGB(255, 197, 197, 197),
          ),
        ],
      ),
    );
  }
}
