import 'package:audioplayers/audioplayers.dart';

class ItemInfoModel {
  final String jpName;
  final String enName;
  final String soundPath;

  const ItemInfoModel({
    required this.jpName,
    required this.enName,
    required this.soundPath,
  });
  playSound(){
    final player = AudioPlayer();
    player.play(AssetSource(soundPath));
  }
}
