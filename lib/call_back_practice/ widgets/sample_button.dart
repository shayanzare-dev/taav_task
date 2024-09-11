import 'package:flutter/material.dart';

class SampleButton extends StatelessWidget {
  const SampleButton({
    super.key,
    required this.onTap,
    required this.counter,
  });

  final void Function(int) onTap;
  final int counter;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            onPressed: () {
              final int newCounter = counter + 1;
              onTap(newCounter);
            },
            child: const Text('increment')),
        ElevatedButton(
            onPressed: () {
              final int newCounter = counter - 1;
              onTap(newCounter);
            },
            child: const Text('decrement')),
      ],
    );
  }
}
