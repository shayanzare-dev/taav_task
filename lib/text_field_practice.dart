import 'package:flutter/material.dart';
import 'package:untitled/layout.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  final TextEditingController _textEditingController = TextEditingController();
  String? onChangeValue;
  late FocusNode myFocusNode;

  @override
  void dispose() {
    _textEditingController.dispose();
    print('dispose...');
    super.dispose();
  }

  void printLatestValue() => print(_textEditingController.text);

  @override
  void initState() {
    myFocusNode = FocusNode();
    _textEditingController.addListener(
        () => setState(() => onChangeValue = _textEditingController.text));
    print('init state');

    super.initState();
  }

  @override
  void didUpdateWidget(covariant MyApp oldWidget) {
    print('did update');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
          key: _keyForm,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyLayout(
                name: '1',
                child: TextFormField(
                  focusNode: myFocusNode,
                  controller: _textEditingController,
                  decoration: const InputDecoration(
                      hintText: 'enter value',
                      hintStyle: TextStyle(locale: Locale('fa'))),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Form.of(context).reset();
                  },
                  child: const Text('reset')),
              Text(onChangeValue ?? ''),
            ],
          ),
        ),
      ),
    );
  }
}
