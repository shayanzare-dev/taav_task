import 'package:flutter/material.dart';

import '../../data_base/data_base.dart';
import '../../data_base/item.dart';

class ListViewPage extends StatelessWidget {
  final Color primaryColor;

  const ListViewPage({super.key, required this.primaryColor});

  @override
  Widget build(BuildContext context) {
    double containerRightMargin = 0;
    double containerLeftMargin = 0;
    final List<Item> items = DataBase.getItems(context);
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        if (index == 0) {
          containerRightMargin = 16;
        }
        if (index == (items.length - 2)) {
          containerLeftMargin = 16;
        }
        return _listViewItem(
            itemId: items[index].id,
            itemName: items[index].name,
            containerLeftMargin: containerLeftMargin,
            containerRightMargin: containerRightMargin,
            primaryColor: primaryColor);
      },
      separatorBuilder: (_, __) => const SizedBox(
        width: 10,
      ),
    );
  }

  Widget _listViewItem(
      {required double containerRightMargin,
      required double containerLeftMargin,
      required Color primaryColor,
      required String itemName,
      required int itemId}) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      margin: EdgeInsets.only(
          right: containerRightMargin, left: containerLeftMargin),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(itemName),
          Text('$itemId'),
        ],
      ),
    );
  }
}
