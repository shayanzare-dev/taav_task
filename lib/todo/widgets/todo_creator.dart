import 'package:flutter/material.dart';
import 'package:untitled/shared/text_field_type.dart';

class TodoCreator extends StatelessWidget {
  TodoCreator({super.key, required this.onSubmit});

  final void Function(String, String) onSubmit;

  final TextEditingController _nameTextEditingController =
      TextEditingController();

  final TextEditingController _lastNameTextEditingController =
      TextEditingController();

  final _keyForm = GlobalKey<FormState>();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(onPressed: () => _onTap(), child: const Text('submit')),
        Expanded(
          flex: 2,
          child: _formTextField(),
        ),
      ],
    );
  }

  void _onTap() {
    if (_keyForm.currentState?.validate() ?? false) {
      onSubmit(
          _nameTextEditingController.text, _lastNameTextEditingController.text);
      _focusNode.requestFocus();
      _nameTextEditingController.clear();
      _lastNameTextEditingController.clear();
    }
  }

  Widget _formTextField() {
    return Form(
      key: _keyForm,
      child: Column(
        children: [
          _titleTextFromField('Enter name',
              type: TextFieldType.name, controller: _nameTextEditingController),
          const SizedBox(height: 16),
          _titleTextFromField('Enter last name',
              type: TextFieldType.lastName,
              controller: _lastNameTextEditingController),
        ],
      ),
    );
  }

  Widget _titleTextFromField(String hintText,
          {required TextEditingController controller,
          required TextFieldType type}) =>
      TextFormField(
        // autofocus: type == textFieldType ? true : false,
        // focusNode: _focusNode,
        keyboardType: TextInputType.name,
        validator: _textFieldValidator,
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      );

  String? _textFieldValidator(String? value) {
    if (value == null) {
      return 'value is null';
    }
    if (value.isEmpty) {
      return 'empty';
    }
    if (value.length <= 3) {
      return 'please insert more than 3 character';
    }
    return null;
  }
}
