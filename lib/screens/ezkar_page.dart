import 'package:flutter/material.dart';
import 'package:lim_course/widgets/ezkar_item_widget.dart';

class EzkarPage extends StatefulWidget {
  const EzkarPage({super.key});

  @override
  State<EzkarPage> createState() => _EzkarPageState();
}

List<AzkarItem> items = [
  AzkarItem(elzekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِهِ.', ezkarColor: Colors.green),
  AzkarItem(elzekr: 'الحمد لله', ezkarColor: Colors.blue),
  AzkarItem(elzekr: 'الله اكبر', ezkarColor: Colors.blueGrey),
  AzkarItem(
      elzekr: 'اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد',
      ezkarColor: Colors.brown),
  AzkarItem(
      elzekr:
          'أسْتَغْفِرُ اللهَ العَظِيمَ الَّذِي لاَ إلَهَ إلاَّ هُوَ، الحَيُّ القَيُّومُ',
      ezkarColor: Colors.lightBlue),
  AzkarItem(
      elzekr: 'أَعـوذُ بِكَلِمـاتِ اللّهِ التّـامّـاتِ مِنْ شَـرِّ ما خَلَـق',
      ezkarColor: Colors.blue),
];

class _EzkarPageState extends State<EzkarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
        itemExtent: MediaQuery.of(context).size.width,
        physics: const PageScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) => items[index],
      )),
    );
  }
}
//test to pull
