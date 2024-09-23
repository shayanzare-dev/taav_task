import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  CustomSwitch({
    super.key,
    required this.onDelete,
    required this.id,
  });

  final int id;
  final void Function(int) onDelete;
  bool isSwitchActive = false;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  late TextEditingController textController;
  late bool _isSwitchActive;
  bool _isTextFieldActive = false;
  String value = 'null';

  @override
  void initState() {
    value = 'switch ${widget.id}';
    textController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _isSwitchActive = widget.isSwitchActive;
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              if (!_isTextFieldActive)
                Text(value)
              else
                TextField(
                  controller: textController,
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
            ],
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () => widget.onDelete(widget.id),
          icon: const Icon(Icons.delete),
        ),
        IconButton(
          onPressed: () {
            if (!_isTextFieldActive) {
              setState(() {
                textController.text = value;
                _isTextFieldActive = !_isTextFieldActive;
              });
            } else {
              setState(() {
                value = textController.text;
                _isTextFieldActive = !_isTextFieldActive;
              });
            }
          },
          icon: _isTextFieldActive
              ? const Icon(Icons.verified)
              : const Icon(Icons.edit),
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
