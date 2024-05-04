import 'package:flutter/material.dart';
import 'package:toku/models/item_info_model.dart';

class ItemInfo extends StatelessWidget {
  final ItemInfoModel itemInfoModel;

  const ItemInfo({
    super.key,
    required this.itemInfoModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemInfoModel.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  itemInfoModel.enName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
        IconButton(
            onPressed: () => itemInfoModel.playSound(),
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ))
      ],
    );
  }
}
