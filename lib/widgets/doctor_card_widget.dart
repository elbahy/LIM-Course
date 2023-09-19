import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  DoctorCard({
    super.key,
    required this.name,
    required this.img,
    this.isLike = false,
    required this.rate,
  });

  final String name;
  final String img;
  bool isLike;
  final double rate;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        decoration: BoxDecoration(
            color: const Color.fromARGB(130, 210, 235, 231),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Image.asset(
              img,
              width: 110,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 185,
                  child: Row(
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      (isLike == false)
                          ? const Icon(
                              Icons.favorite_border,
                              color: Color(0xff0B8FAC),
                            )
                          : const Icon(
                              Icons.favorite,
                              color: Color(0xff0B8FAC),
                            )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  width: 180,
                  child: Text(
                    'Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac mattis.',
                    style: TextStyle(
                        fontSize: 11,
                        color: Color(0xff858585),
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 185,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll<Color>(
                                  Color(0xff0B8FAC)),
                          shape: MaterialStatePropertyAll<OutlinedBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                        child: const Text(
                          'Book',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.star,
                        color: Color(0xffF89603),
                      ),
                      Text(rate.toString())
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
