import 'package:deencastv2/features/podcast/home/widgets/appbar.dart';
import 'package:deencastv2/features/podcast/home/widgets/episode_card.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class LibraryItemScreen extends StatelessWidget {
  const LibraryItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(showBackArrow: true, title: Text('Saved Episodes')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              EpisodeCard(
                date: '30min Ago',
                title: 'Usulul Tafseer 12',
                category: 'Tafseer',
                duration: '40min',
                scholarName: 'Late Sh Jaafar Adam',
                scholarImage: DImages.jaafarAdam,
              ),
              EpisodeCard(
                date: '30min Ago',
                title: 'Usulul Tafseer 12',
                category: 'Tafseer',
                duration: '40min',
                scholarName: 'Late Sh Jaafar Adam',
                scholarImage: DImages.jaafarAdam,
              ),
              EpisodeCard(
                date: '30min Ago',
                title: 'Usulul Tafseer 12',
                category: 'Tafseer',
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
