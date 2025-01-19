
import 'package:flutter/material.dart';
import 'package:language_learning/models/item.dart';
// import 'package:toku/models/item.dart';

import 'item_info.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key,required this.item,required this.color,});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color.fromARGB(255, 254, 216, 181),
              child: Image.asset(item.image!)),
          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}
