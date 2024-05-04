import 'package:flutter/material.dart';
import 'package:toku/models/models_screens.dart';
import 'package:toku/shared/compents/items_info.dart';

class CategoryScreens extends StatelessWidget {
  final ModelScreen numbersModel;
  final int backgroundColor;

  const CategoryScreens({
    super.key,
    required this.numbersModel,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(backgroundColor),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DD),
            width: 100,
            child: Image.asset(
              numbersModel.imagePath,
            ),
          ),
          Expanded(
            child: ItemInfo(
              itemInfoModel: numbersModel,
            ),
          )
        ],
      ),
    );
  }
}
