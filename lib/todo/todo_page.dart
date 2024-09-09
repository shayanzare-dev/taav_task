import 'package:flutter/material.dart';
import 'package:untitled/todo/my_person.dart';
import 'package:untitled/todo/widgets/todo_creator.dart';

import 'widgets/item_list.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  //  String showStatusText() => isEnable ? 'UnEnable' : 'enable';
  final List<MyPerson> todoList = [];

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

  void _onDelete(int index) => setState(() => todoList.removeAt(index));

  void _onSubmit(
    String name,
    String lastName,
  ) =>
      setState(
        () => todoList
            .add(MyPerson(name: name.trim(), lastName: lastName.trim())),
      );
}
