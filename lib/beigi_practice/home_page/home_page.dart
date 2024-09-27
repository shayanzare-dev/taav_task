import 'package:flutter/material.dart';
import 'package:untitled/beigi_practice/drop_down_page/drop_down_page.dart';
import 'package:untitled/beigi_practice/home_page/widgets/custom_switch.dart';
import 'package:untitled/beigi_practice/home_page/widgets/switch_list.dart';

import '../../utils/show_snack_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CustomSwitch> switchItems = [];
  int number = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => switchItems.add(CustomSwitch(
            onDelete: _onDelete,
            id: ++number,
          ))),
        child: const Icon(Icons.add),
      ),
      body: _body(),
    );
  }

  Widget _body() => Column(
        children: <Widget>[
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe_oaDhGDb5JkHUPuwdhbmwqdp5ODNj2YqIQ&s',
          ),
          Expanded(child: SwitchList(items: switchItems)),
          ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DropDownPage(),
                  )),
              child: const Text('next page')),
        ],
      );

  void _onDelete(int id) => setState(() {
        final int index = switchItems.indexWhere(
          (element) => element.id == id,
        );
        if (index != -1 && !switchItems[index].isSwitchActive) {
          switchItems.removeAt(index);
        } else {
          shayanShowSnackBar(context, value: 'sorry! switch in on');
        }
      }
          //  CustomSwitch.idCounter -= 1;
          // if (index != -1 && !switchItems[index].isSwitchActive) {
          //   print(switchItems[index].id);
          //   switchItems.removeAt(index);
          //   --number;
          // } else {
          //   shayanShowSnackBar(context, value: 'sorry! switch in on');
          // }
          );
}
