import 'package:deencastv2/features/podcast/home/widgets/info_card.dart';
import 'package:flutter/material.dart';

class HorizontalScrollSection extends StatelessWidget {
  const HorizontalScrollSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cards = const [
      InfoCard(title: 'Dowry', subTitle: 'N185,114'),
      InfoCard(title: 'Zakkat', subTitle: 'N14,809,125'),
      InfoCard(title: 'Diyya', subTitle: 'N740,456,250'),
    ];
    return SizedBox(
      height: 100,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) => cards[index],
        separatorBuilder: (context, index) => const SizedBox(width: 0,),
      ),);
  }
}
