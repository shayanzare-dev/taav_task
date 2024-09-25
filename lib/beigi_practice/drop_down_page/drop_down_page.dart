import 'package:flutter/material.dart';
import 'package:untitled/beigi_practice/drop_down_page/widgets/my_drawer.dart';
import 'package:untitled/compoonets/sliding_floating_action_button.dart';
import 'package:untitled/utils/show_snack_bar.dart';

import '../models/user_model.dart';
import 'widgets/drop_down_button.dart';
import 'widgets/remove_item.dart';

class DropDownPage extends StatefulWidget {
  const DropDownPage({super.key});

  @override
  State<DropDownPage> createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  int number = 0;

  final List<UserModel> _userModels = [UserModel(name: 'example', id: 0)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const MyDrawer(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _floatingAddItemToDropDown(context),
          const SizedBox(width: 16),
          const SlidingFloatingActionButton(),
        ],
      ),
      body: _body(),
    );
  }

  Widget _body() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: DropDownButton(userModels: _userModels)),
          const SizedBox(height: 16),
          RemoveItem(
            targetValue: (targetValue) {
              _onRemoveTap(targetValue);
            },
          ),
        ],
      );

  Widget _floatingAddItemToDropDown(BuildContext context) =>
      FloatingActionButton(
        onPressed: () => _showDialogWithTextField(context),
        child: const Text('add Item'),
      );

  void _showDialogWithTextField(BuildContext context) {
    TextEditingController textController = TextEditingController();

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Enter your text'),
            content: TextField(
              controller: textController,
              decoration: const InputDecoration(hintText: "Enter text here"),
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _userModels.add(
                          UserModel(name: textController.text, id: ++number));
                    });
                    Navigator.pop(context);
                  },
                  child: const Text('ok')),
              ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('cancel')),
            ],
          );
        });
  }

  void _onRemoveTap(String targetValue) {
    final int index =
        _userModels.indexWhere((element) => element.name == targetValue);
    if (index != -1) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('are you sure to remove this item ?'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _userModels.removeAt(index);
                  });
                  Navigator.pop(context);
                  shayanShowSnackBar(context,
                      value: 'successful remove item!',
                      backgroundColor: Colors.green);
                },
                child: const Text('Yes')),
            ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('No')),
          ],
        ),
      );
    } else {
      shayanShowSnackBar(context, value: 'not found it item');
    }
  }
}
