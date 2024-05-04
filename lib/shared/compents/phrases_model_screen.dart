import 'package:flutter/material.dart';
import 'package:toku/models/item_info_model.dart';
import 'package:toku/shared/compents/items_info.dart';

class PhrasesScreenModel extends StatelessWidget {
  final ItemInfoModel itemInfoModel;
  final int backgroundColor;

  const PhrasesScreenModel({
    super.key,
    required this.itemInfoModel,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(backgroundColor),
      height: 100,
      child: ItemInfo(
        itemInfoModel: itemInfoModel,
      ),
    );
  }
}
