import 'package:deencastv2/utils/constants/image_strings.dart';

class AudioTrack {
  final String title;
  final String scholarName;
  final String imageUrl;

  AudioTrack({
    required this.title,
    required this.scholarName,
    required this.imageUrl,
  });
}

// dummy data for now
final currentAudio = AudioTrack(
  title: 'The Power of Sincerity',
  scholarName: 'Prof Isa Ali Pantami',
  imageUrl:
  DImages.isaAliPantami, // can be empty string
);
