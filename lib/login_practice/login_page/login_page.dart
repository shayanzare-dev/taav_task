import 'package:flutter/material.dart';

import '../../utils/show_snack_bar.dart';
import '../../utils/validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isShow = true;
  bool? isChecked = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late final TextEditingController _fullNameEditingController;

  late final TextEditingController _passwordEditingController;

  final List<String> _gender = ['Male', 'Female'];
  String? selected;

  @override
  void initState() {
    if (context.mounted) {
      _fullNameEditingController = TextEditingController();
      _passwordEditingController = TextEditingController();
    }
    super.initState();
  }

  @override
  void dispose() {
    _fullNameEditingController.dispose();
    _passwordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _body(context));
  }

  Widget _body(context) => Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('USER NAME'),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: _nameValidator,
                  controller: _fullNameEditingController,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    border: OutlineInputBorder(),
                    hintText: 'for example : shaman are',
                  ),
                ),
                const SizedBox(height: 16),
                const Text('PASSWORD'),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  obscureText: isShow,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: _passwordValidator,
                  keyboardType: TextInputType.visiblePassword,
                  controller: _passwordEditingController,
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    border: const OutlineInputBorder(),
                    suffixIcon: _buttonChangeStatus(),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text('email'),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: _nameValidator,
                  // controller: _fullNameEditingController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    border: OutlineInputBorder(),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              setState(() => isChecked = value);
                            }),
                        const Text('Remember Me'),
                      ],
                    ),
                    const Text('Forgot Password?'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Text('Male'),
                        Radio<String>(
                          value: _gender[0],
                          groupValue: selected,
                          onChanged: (value) {
                            setState(() {
                              selected = value;
                              print(value);
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Female'),
                        Radio<String>(
                          value: _gender[1],
                          groupValue: selected,
                          onChanged: (value) {
                            setState(() {
                              selected = value;
                              print(value);
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () => _submitInformationButton(context),
                      child: const Text('login')),
                ),
              ],
            ),
          ),
        ),
      );

  Widget _buttonChangeStatus() => IconButton(
      onPressed: () => setState(() => isShow = !isShow),
      icon: isShow
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off));

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

  String? _passwordValidator(String? value) {
    value = value?.trim();

    if (value == null || value.isEmpty) {
      return 'please enter some password';
    }
    if (value.length < 8) {
      return 'please enter more than 8 char';
    }

    return null;
  }

  Widget _submitInformationButton(BuildContext context) => ElevatedButton(
      onPressed: () => _submitValidator(context), child: const Text('submit'));

  void _submitValidator(BuildContext context) {
    if ((_formKey.currentState?.validate() ?? false) && selected != null) {
      shayanShowSnackBar(context,
          value: 'something is wrong', backgroundColor: Colors.green);
    } else {
      shayanShowSnackBar(context,
          value: 'something is wrong', backgroundColor: Colors.red);
    }
  }
}
