import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
   CustomSwitch({super.key, required this.onDelete, required this.id});

  final int id;
  final void Function(int) onDelete;
  bool isSwitchActive = false;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  late bool _isSwitchActive;

  @override
  Widget build(BuildContext context) {
    _isSwitchActive = widget.isSwitchActive;
    return Row(
      children: [
        Text('switch ${widget.id}'),
        const Spacer(),
        IconButton(
          onPressed: () => widget.onDelete(widget.id),
          icon: const Icon(Icons.delete),
        ),
        Switch(
            value: _isSwitchActive,
            onChanged: (value) => _changeSwitchStatus(value)),
      ],
    );
  }

  void _changeSwitchStatus(value) =>
      setState(() => widget.isSwitchActive = value);
}
