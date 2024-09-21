import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled/beigi_practice/datas/person_data.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final List<String> myList = [];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Mark_Zuckerberg_at_the_37th_G8_Summit_in_Deauville_018_v1.jpg/800px-Mark_Zuckerberg_at_the_37th_G8_Summit_in_Deauville_018_v1.jpg')),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          const ExpansionTile(
            leading: Icon(Icons.person),
            title: Text('biography'),
            children: [
              Text('''
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                '''),
            ],
          ),
          ExpansionTile(
              leading: const Icon(Icons.menu_sharp),
              title: const Text('Items'),
              children: List.generate(
                myList.length,
                (index) => _myListTile(myList[index]),
              )),
          ElevatedButton(
              onPressed: () {
                try {
                  setState(() => myList.add(_generateName()));
                } catch (e) {
                  print(e);
                }
                myList.sort();
              },
              child: const Text('add random people name')),
        ],
      ),
    );
  }

  Widget _myListTile(String value) => ListTile(
        onTap: () {},
        title: Text(value),
      );

  String _generateName() {
    const List<String> names = PersonData.names;
    final int random = Random().nextInt(names.length - 1);
    return names[random];
  }
}
