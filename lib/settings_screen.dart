import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lim_course/widgets/custom_button.dart';
import 'package:lim_course/widgets/setting_item.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          backgroundColor: const Color(0xff0c1c31),
          title: const Text('Setting',
              style: TextStyle(color: Colors.white, fontSize: 35)),
          flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/01.jpg'),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text('Hello',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Mohamed Elbahy',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
                const Spacer(),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: const Color(0xff1f2c42),
                  child: IconButton(
                    color: Colors.white,
                    iconSize: 20,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton2(
                  backgroundColor: Colors.red,
                  iconColor: Colors.white,
                  buttonIcon: Icons.power_settings_new,
                  iconName: 'Off Energy',
                ),
                CustomButton2(
                  buttonIcon: Icons.lock,
                  iconName: 'Left Home',
                ),
                CustomButton2(
                  buttonIcon: FontAwesomeIcons.key,
                  iconName: 'Came Home',
                )
              ],
            ),
          ),
          const Divider(thickness: 5),
          SettingItem(settingName: 'My Home'),
          const Divider(thickness: 2),
          SettingItem(settingName: 'Messages', messagesCount: 3),
          const Divider(thickness: 2),
          SettingItem(settingName: 'Family Access'),
          const Divider(thickness: 5),
          SettingItem(settingName: 'Change Password'),
          const Divider(thickness: 2),
          SettingItem(settingName: 'Support'),
          const Divider(thickness: 5),
          SettingItem(settingName: 'Sign Out', itemColor: Colors.red),
          const Divider(thickness: 2),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/home-wifi-angle-svgrepo-com.svg',
              height: 25,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/stats-chart-svgrepo-com.svg',
              height: 25,
              color: Colors.grey,
            ),
            label: 'Statics',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/share-svgrepo-com.svg',
              height: 25,
              color: Colors.grey,
            ),
            label: 'Routines',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.red,
            ),
            label: 'Setting',
          ),
        ],
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        currentIndex: 3,
      ),
    );
  }
}
