import 'package:flutter/material.dart';
import 'package:untitled/todo/widgets/todo_creator.dart';

import 'widgets/item_list.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  void dispose() {
    super.dispose();
  }

  //  String showStatusText() => isEnable ? 'UnEnable' : 'enable';
  Map<String, List<String>> todoList = {'name': [], 'lastName': []};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: _body(),
      ),
    );
  }

  Widget _body() => Column(
        children: [
          const Center(child: Text('title')),
          TodoCreator(onSubmit: _onSubmit),
          Expanded(
            child: ItemList(
              todoList: todoList,
              onDelete: _onDelete,
            ),
          )
        ],
      );

  void _onDelete(int index) => setState(() {
        todoList['name']!.removeAt(index);
        todoList['lastName']!.removeAt(index);
      });

  void _onSubmit(
    String name,
    String lastName,
  ) =>
      setState(() {
        todoList['name']!.add(name.trim());
        todoList['lastName']!.add(lastName.trim());
      });
}
