import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('todo app'),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Text('add item')),
      body: _body(),
    );
  }

  Widget _body() => SingleChildScrollView(
        child: Column(
          children: [],
        ),
      );
}
