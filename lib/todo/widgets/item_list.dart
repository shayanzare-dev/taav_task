
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key, required this.todoList});

  final Map<String, List<String>> todoList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: _itemBuilder,
        separatorBuilder: (context, index) => Divider(),
        itemCount: todoList['name']!.length);
  }

  Widget _itemBuilder(BuildContext context, int index) => Row(
    children: [
      Text(todoList['name']![index]),
      IconButton(onPressed: () {}, icon: const Icon(Icons.clear))
    ],
  );
}
