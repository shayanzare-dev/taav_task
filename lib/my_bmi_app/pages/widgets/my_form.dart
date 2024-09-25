import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late final TextEditingController _nameController;

  late final TextEditingController _heightController;

  late final TextEditingController _weightController;

  late final FocusNode _focusNode;

  bool hasFocus = false;

  @override
  void initState() {
    _nameController = TextEditingController();
    _heightController = TextEditingController();
    _weightController = TextEditingController();
    _focusNode = FocusNode();
    _focusNode.addListener(
      () {
        if (_focusNode.hasFocus) {
          hasFocus = true;
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              keyboardType: TextInputType.name,
              validator: _nameValidator,
              focusNode: _focusNode,
              decoration: InputDecoration(
                  suffixIcon: _focusNode.hasFocus
                      ? null
                      : const Icon(Icons.text_fields_outlined),
                  border: const OutlineInputBorder(),
                  labelText: 'Name'),
              controller: _nameController,
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              validator: _heightValidator,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                  suffixIcon: Icon(CupertinoIcons.heart_circle),
                  border: OutlineInputBorder(),
                  labelText: 'Height'),
              controller: _heightController,
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              validator: _weightValidator,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                  suffixIcon: Icon(CupertinoIcons.ant),
                  border: OutlineInputBorder(),
                  labelText: 'Weight'),
              controller: _weightController,
            ),
          ],
        ));
  }

  String? _nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'please enter some text';
    }
    if (value.length < 4) {
      return 'number must have more than 3 characters';
    }

    return null;
  }

  String? _heightValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'please enter some height';
    }
    if (!RegExp('^[0-9]+').hasMatch(value)) {
      return 'height must between 0 ta 9';
    }

    return null;
  }

  String? _weightValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'please enter some weight';
    }
    if (!RegExp('^[1-9]+').hasMatch(value)) {
      return 'weight must between 0 ta 9';
    }

    return null;
  }
}
