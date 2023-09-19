import 'package:flutter/material.dart';
import 'package:lim_course/screens/login_screen.dart';
import 'package:lim_course/widgets/custom_button_widget.dart';
import 'package:lim_course/widgets/custom_text_form.dart';
import 'package:lim_course/widgets/label_text.dart';
import 'package:lim_course/widgets/social_icon.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Create New Account',
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
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const LabelText('Full Name'),
              CustomTextForm(hint: 'Enter Your Full Name'),
              const LabelText('Password'),
              CustomTextForm(
                hint: 'Enter Your Password',
                isPass: true,
              ),
              const LabelText('Email'),
              CustomTextForm(
                  hint: 'Enter Your Email',
                  keyType: TextInputType.emailAddress),
              const LabelText('Mobile Number'),
              CustomTextForm(hint: 'Enter Your Phone Number'),
              const Spacer(),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomButton('Sign Up', onPressButton: () {})),
              const SizedBox(
                height: 10,
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
                                builder: (_) => const LoginScreen()));
                      },
                      child: const Text('Sign In'))
                ],
              )
            ])));
  }
}
