import 'package:flutter/material.dart';
import 'package:lim_course/portfolio_consts.dart';
import 'package:lim_course/widgets/portfolio_subtext.dart';

class ClientCard extends StatelessWidget {
  const ClientCard(
      {required this.image,
      required this.name,
      required this.text,
      required this.title,
      super.key});

  final String image;
  final String text;
  final String name;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              height: 260.0,
              // width: MediaQuery.sizeOf(context).width - 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 240, 240, 240),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 55),
                  SubText(
                    text,
                    centerText: true,
                  ),
                  SizedBox(
                    height: 30,
                    width: MediaQuery.sizeOf(context).width * .7,
                    child: const Divider(
                      height: 2,
                    ),
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        fontFamily: 'Koll',
                        color: headTextColor),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 13,
                        fontFamily: 'Koll',
                        color: Colors.blueGrey),
                  )
                ],
              ),
            ),
            Positioned(
              left: MediaQuery.sizeOf(context).width / 3,
              child: FractionalTranslation(
                translation: const Offset(0.0, -.39),
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage(image),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
