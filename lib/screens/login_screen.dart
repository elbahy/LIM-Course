import 'package:flutter/material.dart';
import 'package:lim_course/screens/home_screen.dart';
import 'package:lim_course/screens/signup_screen.dart';
import 'package:lim_course/widgets/custom_button_widget.dart';
import 'package:lim_course/widgets/custom_text_form.dart';
import 'package:lim_course/widgets/label_text.dart';
import 'package:lim_course/widgets/social_icon.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome',
          style: TextStyle(
              color: Color(0xff0B8FAC),
              fontSize: 22,
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sign In',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Korem ipsum dolor sit amet, adipiscing elit.',
              style: TextStyle(
                  color: Color(0xff858585),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const Spacer(
              flex: 5,
            ),
            const LabelText('Email'),
            CustomTextForm(
                hint: 'Enter Your Email', keyType: TextInputType.emailAddress),
            const Spacer(),
            const LabelText('Password'),
            CustomTextForm(hint: 'Enter Your Password', isPass: true),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forget Password',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                )
              ],
            ),
            const Spacer(
              flex: 5,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: CustomButton('Sign In', onPressButton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomeScreen())));
              }),
            ),
            const Spacer(
              flex: 5,
            ),
            const Center(
              child: Text(
                'OR',
                style: TextStyle(
                    color: Color(0xff858585),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon('assets/FB-Logo.png'),
                SizedBox(width: 30),
                SocialIcon('assets/google-logo.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don’t have an account? ',
                  style: TextStyle(color: Color(0xff858585)),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const SignUpScreen()));
                    },
                    child: const Text('Sign Up'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
