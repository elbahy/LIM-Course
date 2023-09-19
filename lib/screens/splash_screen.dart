import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Medinova.png'),
            const SizedBox(height: 15),
            const Text(
              'Medica',
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff0B8FAC)),
            )
          ],
        ),
      ),
    ));
  }
}
