import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({
    super.key,
    required this.counter,
  });

  int counter;

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  late int _counter;

  @override
  void initState() {
    _counter = widget.counter;
    super.initState();
  }

  @override
  void dispose() {
    print('disposing....');
    widget.counter = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Drawer(
        child: ListTile(
            leading: const Icon(Icons.notifications_active),
            title: Text('$_counter')),
      );
}
