import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('helloo'),
      ),
      body: _body(context));

  Widget _body(BuildContext context) => Column(
        children: [
          Expanded(
              child: ColoredBox(
            color: Colors.lightGreen,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 3.5, color: Colors.red)),
                    enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green, width: 2.5)),
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: _changeShowStatus,
                      icon: const Icon(Icons.remove_red_eye_sharp),
                    ),
                    label: const Text('password')),
                obscureText: isObscure,
                textInputAction: TextInputAction.emergencyCall,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'enter some text';
                  }
                  return null;
                },
              ),
            ),
          )), // Expanded(
          //     child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: ElevatedButton(
          //           child: const Text('go to form page'),
          //           onPressed: () =>
          //               Navigator.of(context).push(MaterialPageRoute(
          //             builder: (context) => FormPage(),
          //           )),
          //         ))),
          Expanded(
              child: Container(
            color: Colors.red,
          )),
        ],
      );

  void _changeShowStatus() => setState(() =>  isObscure = !isObscure);
}
