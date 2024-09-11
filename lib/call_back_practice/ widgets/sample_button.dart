import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap, child: Text('sample button'));
  }
}
