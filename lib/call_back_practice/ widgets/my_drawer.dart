import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({
    super.key,
    required this.counter,
  });

  final int counter;

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int _counter = 0;

  @override
  void initState() {
    _counter = widget.counter;
    super.initState();
  }

  @override
  void dispose() {
    _counter = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListTile(
          leading: const Icon(Icons.notifications_active),
          title: Text('$_counter')),
    );
  }
}
