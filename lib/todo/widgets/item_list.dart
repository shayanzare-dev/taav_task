import 'package:flutter/material.dart';
import 'package:untitled/todo/my_person.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key, required this.todoList, required this.onDelete});

  final List<MyPerson> todoList;
  final void Function(int) onDelete;

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemBuilder: _itemBuilder,
        separatorBuilder: (context, index) => const Divider(),
        itemCount: todoList.length);

  Widget _itemBuilder(BuildContext context, int index) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(todoList[index].name),
          Text(todoList[index].lastName),
          IconButton(
              onPressed: () => onDelete(index), icon: const Icon(Icons.clear))
        ],
      );
}
