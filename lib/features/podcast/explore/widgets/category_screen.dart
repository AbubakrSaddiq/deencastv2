import 'package:deencastv2/features/podcast/home/widgets/appbar.dart';
import 'package:deencastv2/features/podcast/home/widgets/episode_card.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(showBackArrow: true, title: Text('Seerah')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              EpisodeCard(
                date: '30min Ago',
                title: 'Hijrah Zuwa Abisiniyah 03',
                category: 'Seerah',
                duration: '40min',
                scholarName: 'Late Sh Jaafar Adam',
                scholarImage: DImages.jaafarAdam,
              ),
              EpisodeCard(
                date: '30min Ago',
                title: 'Hijrah Zuwa Abisiniyah 02',
                category: 'Seerah',
                duration: '40min',
                scholarName: 'Late Sh Jaafar Adam',
                scholarImage: DImages.jaafarAdam,
              ),EpisodeCard(
                date: '30min Ago',
                title: 'Hijrah Zuwa Abisiniyah 01',
                category: 'Seerah',
                duration: '40min',
                scholarName: 'Late Sh Jaafar Adam',
                scholarImage: DImages.jaafarAdam,
              ),
              ],
          ),
        ),
      ),
    );
  }
}
