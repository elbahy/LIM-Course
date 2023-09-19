import 'package:flutter/material.dart';
import 'package:lim_course/screens/all_doctors_screen.dart';
import 'package:lim_course/widgets/category_item.dart';
import 'package:lim_course/widgets/custom_text_form.dart';
import 'package:lim_course/widgets/doctor_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage('assets/01.jpg'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi,Welcome Back,',
                              style: TextStyle(
                                  color: Color(0xff858585),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'Mohamed Elbahy',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.notifications_none))
                      ],
                    ),
                    const SizedBox(height: 20),
                    CustomTextForm(
                      hint: 'Search a Doctor',
                      preIcon: const Icon(Icons.search),
                      sufIcon: const Icon(Icons.mic),
                      a: 0,
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                      decoration: BoxDecoration(
                          color: const Color(0xff0B8FAC),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Medical Center',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                width: 180,
                                child: Text(
                                  'Yorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/doc1.png',
                            width: 110,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Row(
                      children: [
                        Text(
                          'Categories',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        Text(
                          'See All',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff858585)),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 80,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: const [
                          CategoryItem(itemName: 'Denteeth'),
                          CategoryItem(itemName: 'Theripist'),
                          CategoryItem(itemName: 'Surgeon'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const Text(
                          'All Doctors',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const AllDoctorsScreen())));
                          },
                          child: const Text(
                            'See All',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff858585)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    DoctorCard(
                      img: 'assets/doc1.png',
                      name: 'Dr.Pawan',
                      rate: 5,
                    )
                  ],
                ),
              ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            activeIcon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff0B8FAC),
              ),
              padding: const EdgeInsets.all(10),
              child: const Icon(Icons.home_outlined),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.watch_later_outlined),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            label: '',
          ),
        ],
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 0,
      ),
    );
  }
}
