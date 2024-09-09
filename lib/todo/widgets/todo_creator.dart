import 'package:flutter/material.dart';

class TodoCreator extends StatelessWidget {
  TodoCreator({super.key, required this.onSubmit});

  final void Function(TextEditingController, TextEditingController) onSubmit;
  final TextEditingController _nameTextEditingController =
      TextEditingController();
  final TextEditingController _lastNameTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: () => onSubmit(
                _nameTextEditingController, _lastNameTextEditingController),
            child: const Text('submit')),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              _titleTextField('Enter name',
                  controller: _nameTextEditingController),
              const SizedBox(height: 16),
              _titleTextField('Enter last name',
                  controller: _lastNameTextEditingController),
            ],
          ),
        ),
      ],
    );
  }

  Widget _titleTextField(String hintText,
          {required TextEditingController controller}) =>
      TextField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w700,
          ),
        ),
      );
}
