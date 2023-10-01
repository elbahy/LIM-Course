import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:lim_course/portfolio_consts.dart';
import 'package:lim_course/widgets/portfolio_head_text.dart';
import 'package:lim_course/widgets/portfolio_subtext.dart';
import 'package:lim_course/widgets/portfolio_work_til.dart';

class PrefScreen extends StatelessWidget {
  const PrefScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(
                child: Text(
                  'Hey There, \nI\'m ElBahy',
                  style: TextStyle(
                      fontSize: 50,
                      color: headTextColor,
                      fontFamily: 'Koll',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20)),
              const SliverToBoxAdapter(
                child: Text(
                  'I Devolope creative simple apps, \nAnd I Love What i do',
                  style: TextStyle(
                      fontSize: 20,
                      color: regularTextColor,
                      fontFamily: 'Koll',
                      height: 1.7),
                ),
              ),
              SliverAppBar(
                backgroundColor: headTextColor,
                elevation: 0,
                pinned: true,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                expandedHeight: MediaQuery.sizeOf(context).height * .5,
                collapsedHeight: MediaQuery.sizeOf(context).height * .1,
                title: const Center(
                  child: Text(
                    'Mohamed Elbahy',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Koll',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                flexibleSpace: const FlexibleSpaceBar(
                  title: Text(
                    'Mobile App Devoloper',
                    style: TextStyle(fontSize: 12, fontFamily: 'Koll'),
                  ),
                  centerTitle: true,
                  background: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/pic-edited.jpg'),
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 25)),
              SliverToBoxAdapter(child: HeadText('What do I help?')),
              SliverToBoxAdapter(
                child: SubText(
                    'I will help you with finging a solution and solve your problems, We use process design to create digital products.Besids that also help their business.'),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 35)),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Countup(
                          begin: 0,
                          end: 143,
                          duration: const Duration(seconds: 5),
                          style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: headTextColor),
                        ),
                        const Text(
                          'Project Completed',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Koll',
                              color: headTextColor),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Countup(
                          begin: 0,
                          end: 80,
                          duration: const Duration(seconds: 5),
                          style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: headTextColor),
                        ),
                        const Text(
                          'Happy Clients',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Koll',
                              color: headTextColor),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 25)),
              const SliverToBoxAdapter(
                  child: WorkTil(
                icon: Icons.developer_mode_outlined,
                title: 'Mobile App Devolop',
                subTitle: '76 Projects',
                tilColor: headTextColor,
              )),
              const SliverToBoxAdapter(child: SizedBox(height: 15)),
              const SliverToBoxAdapter(
                  child: WorkTil(
                icon: Icons.design_services_outlined,
                title: 'Mobile UX Design',
                subTitle: '45 Projects',
                tilColor: Colors.red,
              )),
              const SliverToBoxAdapter(child: SizedBox(height: 15)),
              const SliverToBoxAdapter(
                  child: WorkTil(
                icon: Icons.branding_watermark_outlined,
                title: 'Brand Identity',
                subTitle: '22 Projects',
                tilColor: Colors.lime,
              )),
            ],
          )),
    );
  }
}
