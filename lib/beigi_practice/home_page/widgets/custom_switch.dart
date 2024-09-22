import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  CustomSwitch({
    super.key,
    required this.onDelete,
    required this.id,
    required this.onEdit,
  });

  final int id;
  final void Function(int) onDelete;
  final void Function(int) onEdit;
  bool isSwitchActive = false;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  final TextEditingController _textController =
      TextEditingController();
  late bool _isSwitchActive;
  bool _isTextFieldActive = false;

  @override
  Widget build(BuildContext context) {
    _isSwitchActive = widget.isSwitchActive;
    String value = 'switch ${widget.id}';
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              if (!_isTextFieldActive)
                Text(value)
              else
                TextFormField(
                  controller: _textController,
                  initialValue: value,
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
            //widget.onEdit(widget.id);
            print(_textController.text.isEmpty);
            setState(() => _isTextFieldActive = !_isTextFieldActive);
          },
          icon: _isTextFieldActive ? Icon(Icons.verified) : Icon(Icons.edit),
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
