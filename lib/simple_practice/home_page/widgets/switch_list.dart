import 'package:flutter/material.dart';
import 'package:untitled/simple_practice/home_page/widgets/custom_switch.dart';

class SwitchList extends StatefulWidget {
  const SwitchList({
    super.key,
    required this.items,
  });

  final List<CustomSwitch> items;

  @override
  State<SwitchList> createState() => _SwitchListState();
}

class _SwitchListState extends State<SwitchList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) =>widget.items[index],
        separatorBuilder: (_, __) => const Divider(),
        itemCount: widget.items.length);
  }
}
