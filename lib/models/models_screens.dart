import 'package:toku/models/item_info_model.dart';

class ModelScreen  extends ItemInfoModel{
  final String imagePath;
  const ModelScreen({
    required this.imagePath,
    required super.jpName,
    required super.enName,
    required super.soundPath,
  });
}

