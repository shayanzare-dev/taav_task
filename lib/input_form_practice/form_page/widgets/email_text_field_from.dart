import 'package:flutter/material.dart';

class EmailTextFieldForm extends StatelessWidget {
  const EmailTextFieldForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
          return 'Please enter a valid email address';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelStyle: TextStyle(
          color: Colors.green,
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(width: 3.5, color: Colors.green)),
        labelText: 'Email',
        prefixIcon: Icon(Icons.email),
        hintText: 'example@gmail.com',
      ),
    );
  }
}
