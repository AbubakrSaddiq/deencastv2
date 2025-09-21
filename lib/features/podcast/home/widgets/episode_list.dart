// import 'package:flutter/material.dart';
// import '../data/episode_data.dart';
// import 'episode_card.dart';
//
//
// class EpisodesList extends StatelessWidget {
//   const EpisodesList({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       itemCount: listEpisodes.length,
//       itemBuilder: (context, index) {
//         final episode = listEpisodes[index];
//         return EpisodeCard(
//           date: episode.date,
//           title: episode.title,
//           category: episode.category,
//           duration: episode.duration,
//           scholarName: episode.scholarName,
//           scholarImage: episode.scholarImage,
//           onPlay: () {
//             debugPrint("Playing: ${episode.title}");
//           },
//         );
//       }, separatorBuilder: ( context, index) => SizedBox(height: 5,),
//     );
//   }
// }
