import 'package:flutter/material.dart';
import 'package:lim_course/widgets/portfolio_clients.dart';
import 'package:lim_course/widgets/portfolio_head_text.dart';
import 'package:lim_course/widgets/portfolio_subtext.dart';

class LatestWorkScreen extends StatelessWidget {
  const LatestWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: HeadText('My Latest Works')),
            SliverToBoxAdapter(
                child: SubText('Perfect soulation for digital experience')),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 25,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/app1.png'),
                    ),
                    const SizedBox(width: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/app2.png'),
                    ),
                    const SizedBox(width: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/app3.png'),
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 35)),
            SliverToBoxAdapter(
                child: HeadText('People talk about us', centerText: true)),
            SliverToBoxAdapter(
              child: SubText(
                'I got a job that was in accordance with the salary and field of work.',
                centerText: true,
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 35)),
            SliverToBoxAdapter(
              child: SizedBox(
                  height: 260,
                  child: ListView(
                      itemExtent: MediaQuery.sizeOf(context).width - 50,
                      physics: const PageScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: const [
                        ClientCard(
                          image: 'assets/03.jpeg',
                          text:
                              '"A complete search of the internet has found these results satisfactory result is the most popular phrase on the web"',
                          name: 'Jasmen Jack',
                          title: 'Creative manager',
                        ),
                        ClientCard(
                          image: 'assets/02.jpeg',
                          text:
                              '"A complete search of the internet has found these results satisfactory result is the most popular phrase on the web"',
                          name: 'Mohamed Elbahy',
                          title: 'Creative manager',
                        ),
                        ClientCard(
                          image: 'assets/01.jpg',
                          text:
                              '"A complete search of the internet has found these results satisfactory result is the most popular phrase on the web"',
                          name: 'Mohamed Elbahy',
                          title: 'Creative manager',
                        ),
                      ])),
            )
          ],
        ),
      ),
    );
  }
}
