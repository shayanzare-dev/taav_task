import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key,  this.onDelete, this.id});

  final int? id;
  final void Function()? onDelete;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _isSwitchActive = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('switch ${widget.id}'),
        const Spacer(),
        IconButton(
          onPressed: () => widget.onDelete!(),
          icon: const Icon(Icons.delete),
        ),
        Switch(
            value: _isSwitchActive,
            onChanged: (value) => _changeSwitchStatus(value)),
      ],
    );
  }

  void _changeSwitchStatus(value) => setState(() => _isSwitchActive = value);
}
