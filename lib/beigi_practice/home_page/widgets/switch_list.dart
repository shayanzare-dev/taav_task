import 'package:flutter/material.dart';
import 'package:untitled/beigi_practice/home_page/widgets/custom_switch.dart';

class SwitchList extends StatelessWidget {
  const SwitchList({
    super.key,
    required this.items,
  });

  final List<CustomSwitch> items;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: _generatorItems(),
    ));
    /*return ListView.separated(
        itemBuilder: (context, index) => items[index],
        separatorBuilder: (_, __) => const Divider(),
        itemCount: items.length);*/
  }

  List<Widget> _generatorItems() {
    final List<CustomSwitch> list = [];
    for (final CustomSwitch customSwitch in items) {
      list.add(customSwitch);
      print(customSwitch.id);
    }
    return list;
  }
}
