import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.counter});

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _body(context)),
    );
  }

  Widget _body(BuildContext context) {
    return Column(
      children: [
        Text(counter.toString()),
        Row(
          children: [
            ElevatedButton(
                onPressed: () => _trueOnBackTap(context),
                child: const Icon(
                  Icons.keyboard_backspace,
                  color: Colors.green,
                )),
            ElevatedButton(
                onPressed: () => _falseOnBackTap(context),
                child: const Icon(
                  Icons.keyboard_backspace,
                  color: Colors.red,
                )),
            ElevatedButton(
                onPressed: () => _onBackTap(context),
                child: const Icon(Icons.keyboard_backspace)),
          ],
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop<bool?>(context, true);
            },
            child: const Text('back to page'),
          ),
        )
      ],
    );
  }

  void _trueOnBackTap(BuildContext context) {
    Navigator.pop<bool?>(context, true);
  }

  void _falseOnBackTap(BuildContext context) {
    Navigator.pop<bool?>(context, false);
  }

  void _onBackTap(BuildContext context) {
    Navigator.pop(context);
  }
}
