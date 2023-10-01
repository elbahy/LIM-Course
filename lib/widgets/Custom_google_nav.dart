import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lim_course/portfolio_consts.dart';

class GoogleNavBar extends StatelessWidget {
  GoogleNavBar({required this.onTabChange, super.key});
  void Function(int)? onTabChange;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        tabs: const [
          GButton(icon: Icons.person, text: 'Who I\'m'),
          GButton(icon: Icons.work, text: 'Latest Work'),
          GButton(icon: Icons.call, text: 'Contact Me'),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey,
        activeColor: headTextColor,
        onTabChange: (value) => onTabChange!(value),
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 12,
      ),
    );
  }
}
