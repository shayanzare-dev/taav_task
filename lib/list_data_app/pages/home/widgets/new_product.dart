import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled/list_data_app/pages/home/widgets/list_view_page.dart';

import '../../data_base/data_base.dart';
import '../../data_base/item.dart';

class NewProduct extends StatelessWidget {
  const NewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    const Color color = Colors.yellowAccent;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(AppLocalizations.of(context)!.new_products),
      ),
      const SizedBox(height: 8),
      const Expanded(
          child: ListViewPage(
        primaryColor: Colors.red,
      )),
    ]);
  }

  Widget _listViewSeparated(Color primaryColor, BuildContext context) {
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
