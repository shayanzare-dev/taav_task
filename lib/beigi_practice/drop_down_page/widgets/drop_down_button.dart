import 'package:flutter/material.dart';

import '../../models/user_model.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({
    super.key,
    required List<UserModel> userModels,
  }) : _userModels = userModels;

  final List<UserModel> _userModels;

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  UserModel? _userModel;

  @override
  Widget build(BuildContext context) {
    _userModel = widget._userModels.isNotEmpty ? widget._userModels.last : null;
    print('build');
    return DropdownButton<UserModel>(
      focusColor: Colors.green,
      value: _userModel,
      items: _dropdownMenuItemCreator(),
      onChanged: (value) => _userModel = value,
    );
  }

  List<DropdownMenuItem<UserModel>> _dropdownMenuItemCreator() {
    final List<DropdownMenuItem<UserModel>> dropdownMenuItems = [];
    for (int i = 0; i < widget._userModels.length; i++) {
      dropdownMenuItems.add(DropdownMenuItem(
          value: widget._userModels[i],
          child: Text(widget._userModels[i].name)));
    }
    return dropdownMenuItems;
  }
}
