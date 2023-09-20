import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lim_course/screens/ezkar_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffCDDD1E),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text(
                ' مرحبا بك في تطبيق إذكار',
                style: TextStyle(fontFamily: 'Gulzar', fontSize: 25),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const EzkarPage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff6D34BD),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                child: const Text('الدخول للتطبيق'),
              ),
              ElevatedButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff6D34BD),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                child: const Text('الخروج من التطبيق'),
              ),
              const Spacer(),
              const Text(
                'تم تطوير التطبيق بمساعدة المهندس / يوسف عبد الفتاح',
                style: TextStyle(fontFamily: 'Gulzar', fontSize: 13),
              )
            ],
          ),
        ));
  }
}
