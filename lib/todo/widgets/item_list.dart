import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key, required this.todoList, required this.onDelete});

  final Map<String, List<String>> todoList;
  final void Function(int) onDelete;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: _itemBuilder,
        separatorBuilder: (context, index) => const Divider(),
        itemCount: todoList['name']!.length);
  }

  Widget _itemBuilder(BuildContext context, int index) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(todoList['name']![index]),
          Text(todoList['lastName']![index]),
          IconButton(
              onPressed: () => onDelete(index), icon: const Icon(Icons.clear))
        ],
      );
}
