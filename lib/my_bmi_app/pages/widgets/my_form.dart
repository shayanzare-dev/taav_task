import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyForm extends StatefulWidget {
  const MyForm(
      {super.key,
      required this.formKey,
      required this.nameController,
      required this.heightController,
      required this.weightController});

  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController heightController;
  final TextEditingController weightController;

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  bool hasFocus = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              keyboardType: TextInputType.name,
              validator: _nameValidator,
              decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.text_fields_outlined),
                  border: OutlineInputBorder(),
                  labelText: 'Name'),
              controller: widget.nameController,
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              validator: _heightValidator,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  suffixText: 'CM',
                  border: OutlineInputBorder(),
                  labelText: 'Height'),
              controller: widget.heightController,
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              validator: _weightValidator,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  suffixText: 'KG',
                  border: OutlineInputBorder(),
                  labelText: 'Weight'),
              controller: widget.weightController,
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
