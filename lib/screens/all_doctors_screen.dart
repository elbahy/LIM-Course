import 'package:flutter/material.dart';
import 'package:lim_course/widgets/custom_text_form.dart';
import 'package:lim_course/widgets/doctor_card_widget.dart';

class AllDoctorsScreen extends StatelessWidget {
  const AllDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: const Text(
          'All Doctors',
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
          children: [
            CustomTextForm(
              hint: 'Search a Doctor',
              preIcon: const Icon(Icons.search),
              sufIcon: const Icon(Icons.mic),
              a: 0,
            ),
            const SizedBox(height: 20),
            Expanded(
                child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                DoctorCard(img: 'assets/doc1.png', name: 'Dr.Pawan', rate: 5),
                DoctorCard(
                  img: 'assets/doc2.png',
                  name: 'Dr.Wanitha',
                  rate: 4,
                  isLike: true,
                ),
                DoctorCard(img: 'assets/doc1.png', name: 'Dr.Udara', rate: 5),
                DoctorCard(img: 'assets/doc2.png', name: 'Dr.Pawan', rate: 3),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
