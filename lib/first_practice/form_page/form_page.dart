import 'package:flutter/material.dart';
import 'package:untitled/first_practice/models/user_model.dart';
import 'package:untitled/utils/show_snack_bar.dart';

import '../../utils/validator.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late final TextEditingController _fullNameEditingController;

  late final TextEditingController _gmailEditingController;

  @override
  void initState() {
    if (context.mounted) {
      _fullNameEditingController = TextEditingController();
      _gmailEditingController = TextEditingController();
    }
    super.initState();
  }

  @override
  void dispose() {
    _fullNameEditingController.dispose();
    _gmailEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('form page'),
        ),
        body: _body(context),
      );

  Widget _body(context) => Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: _nameValidator,
                controller: _fullNameEditingController,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'for example : shayan zare',
                  labelText: 'full name',
                  suffixIcon: Icon(Icons.abc_rounded),
                ),
              ),
              const SizedBox(height: 32),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: _emailValidator,
                keyboardType: TextInputType.emailAddress,
                controller: _gmailEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'example@gamil.com',
                  labelText: 'email address',
                  suffixIcon: Icon(Icons.email),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: _submitInformationButton(context),
              )
            ],
          ),
        ),
      );

  Widget _submitInformationButton(BuildContext context) => ElevatedButton(
      onPressed: () => _submitValidator(context), child: const Text('submit'));

  void _submitValidator(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      Navigator.pop(
        context,
        UserModel(
            fullName: _fullNameEditingController.text,
            gmail: _gmailEditingController.text),
      );
    } else {
      shayanShowSnackBar(context,
          value: 'something is wrong', backgroundColor: Colors.red);
    }
  }

  String? _emailValidator(String? value) {
    value = value?.trim();
    if (value == null || value.isEmpty) {
      return 'please enter some text';
    }
    if (!Validator.isValidEmail(value)) {
      return 'not a valid email';
    }
    return null;
  }

  String? _nameValidator(String? value) {
    value = value?.trim();

    if (value == null || value.isEmpty) {
      return 'please enter some text';
    }
    if (value.length < 3) {
      return 'please enter more than 2 characters';
    }
    if (!Validator.isValidName(value)) {
      return 'please enter valid name';
    }

    return null;
  }
}
