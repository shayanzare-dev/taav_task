import 'package:flutter/material.dart';

class MyCustomTextField extends StatefulWidget {
  const MyCustomTextField({super.key});

  @override
  State<MyCustomTextField> createState() => _MyCustomTextFieldState();
}

class _MyCustomTextFieldState extends State<MyCustomTextField> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isActiveIcon = false;
  late Icon successIcon = const Icon(Icons.cloud_done, color: Colors.green);

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isActiveIcon ? successIcon : const Text('not success'),
                TextFormField(
                  validator: _validatorName,
                  decoration: const InputDecoration(
                      hintText: 'name', border: OutlineInputBorder()),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        setState(() => isActiveIcon = true);
                      }
                    },
                    child: const Text('submit information')),
              ],
            ),
          ),
        ),
      );

  String? _validatorName(String? value) {
    // if (value == 'shayan') return 'you are our CEO welcom boss';
    if ((value?.isEmpty ?? false || value == null)) return 'wrong!';
    return null;
  }
}
