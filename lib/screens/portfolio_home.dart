import 'package:flutter/material.dart';
import 'package:lim_course/screens/portfolio_contact_me.dart';
import 'package:lim_course/screens/portfolio_latest_work.dart';
import 'package:lim_course/screens/portfolio_pref.dart';
import 'package:lim_course/widgets/Custom_google_nav.dart';

class PortfolioHomePage extends StatefulWidget {
  const PortfolioHomePage({super.key});

  @override
  State<PortfolioHomePage> createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
  int _selectedIndex = 0;
  void nav(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const PrefScreen(),
    const LatestWorkScreen(),
    const ContactMeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: GoogleNavBar(onTabChange: (index) => nav(index)),
      body: _pages[_selectedIndex],
    );
  }
}
