import 'package:flutter/material.dart';

class AzkarItem extends StatefulWidget {
  AzkarItem({
    required this.elzekr,
    required this.ezkarColor,
    super.key,
  });

  final String elzekr;
  Color ezkarColor;

  @override
  State<AzkarItem> createState() => _AzkarItemState();
}

class _AzkarItemState extends State<AzkarItem> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              alignment: Alignment.center,
              height: 180,
              decoration: BoxDecoration(
                  color: widget.ezkarColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${widget.elzekr} ',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'Gulzar',
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    '$count',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'Gulzar',
                      fontSize: 50,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6933BC),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                child: const Icon(Icons.add),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count = 0;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: const Color(0xff6933BC),
                ),
                child: const Text('Reset'))
          ],
        ),
      ),
    );
  }
}
