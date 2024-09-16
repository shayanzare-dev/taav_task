import 'package:flutter/material.dart';
import 'package:untitled/layout.dart';
import 'package:untitled/utils/show_snack_bar.dart';

import 'widgets/email_text_field_from.dart';

class FormPage extends StatelessWidget {
  FormPage({super.key});

  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyLayout(
        name: '1',
        child: Form(
          key: _keyForm,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          canPop: false,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    errorStyle: TextStyle(color: Colors.orange)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: EmailTextFieldForm(),
              ),
              ElevatedButton(
                onPressed: () {
                  /*  if (Navigator.canPop(context)) {
                    print(Navigator.canPop(context));
                    Navigator.pop(context);
                  } else {
                    _showSnackBar(context, 'Please fill out the form');
                  }*/
                  if (_keyForm.currentState?.validate() ?? false) {
                    Navigator.pop(context);
                  } else {
                    shayanShowSnackBar(context,
                        value: 'something is wrong',
                        backgroundColor: Colors.red);
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _canPop() {
    // بررسی اینکه آیا فرم می‌تواند بسته شود
    if ((_keyForm.currentState?.validate()) ?? false) {
      // اگر فرم معتبر نباشد، از خروج جلوگیری می‌شود
      return true;
    } else {
      // فرم معتبر است و می‌توان آن را بست
      return false;
    }
  }
}
