import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class PlayerController extends GetxController {
  late final AudioPlayer audioPlayer;

  var isPlaying = false.obs;
  var currentTitle = ''.obs;
  var currentScholar = ''.obs;
  var currentImage = ''.obs;

  var position = Duration.zero.obs;
  var duration = Duration.zero.obs;

  @override
  void onInit() {
    super.onInit();
    audioPlayer = AudioPlayer();

    audioPlayer.playerStateStream.listen((state) {
      isPlaying.value = state.playing;
    });

    audioPlayer.positionStream.listen((p) {
      position.value = p;
    });

    audioPlayer.durationStream.listen((d) {
      duration.value = d ?? Duration.zero;
    });
  }

  Future<void> loadAudio(String url,
      {String title = '', String scholar = '', String image = ''}) async {
    await audioPlayer.setUrl(url);
    currentTitle.value = title;
    currentScholar.value = scholar;
    currentImage.value = image;
  }

  void playPause() {
    if (audioPlayer.playing) {
      audioPlayer.pause();
    } else {
      audioPlayer.play();
    }
  }

  void seekBy(Duration offset) {
    final newPos = audioPlayer.position + offset;
    audioPlayer.seek(newPos < Duration.zero ? Duration.zero : newPos);
  }

  void seekTo(Duration position) {
    audioPlayer.seek(position);
  }

  @override
  void onClose() {
    audioPlayer.dispose();
    super.onClose();
  }
}
