import 'package:flutter/material.dart';
import 'package:lim_course/widgets/contact_me_button.dart';
import 'package:lim_course/widgets/portfolio_head_text.dart';

class ContactMeScreen extends StatefulWidget {
  const ContactMeScreen({super.key});

  @override
  State<ContactMeScreen> createState() => _ContactMeScreenState();
}

class _ContactMeScreenState extends State<ContactMeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Column(
            children: [
              HeadText('Lets get in touch!'),
              const Spacer(
                flex: 1,
              ),
              Image.asset(
                'assets/callme.png',
                width: 300,
              ),
              const SizedBox(height: 25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContactMeButton(
                    icon: Icons.call_outlined,
                    text: 'Call Me',
                    color: Color(0xff1752ED),
                    bgColor: Color(0xffe8eefe),
                  ),
                  ContactMeButton(
                    icon: Icons.email_outlined,
                    text: 'Email Me',
                    color: Color(0xff08E160),
                    bgColor: Color(0xffE7FBEF),
                  ),
                  ContactMeButton(
                    icon: Icons.chat_outlined,
                    text: 'Chat',
                    color: Color(0xff9553EC),
                    bgColor: Color(0xffF2E9FE),
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
