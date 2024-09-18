import 'package:flutter/material.dart';
import 'package:untitled/simple_practice/home_page/widgets/custom_switch.dart';
import 'package:untitled/simple_practice/home_page/widgets/switch_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<CustomSwitch> switchItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => switchItems.add(const CustomSwitch())),
        child: const Icon(Icons.add),
      ),
      body: _body(),
    );
  }

  // void _onDelete(int index) => setState(() {});

  Widget _body() => Column(
        children: <Widget>[
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe_oaDhGDb5JkHUPuwdhbmwqdp5ODNj2YqIQ&s',
          ),
          Expanded(child: SwitchList(items: switchItems)),
        ],
      );
}
