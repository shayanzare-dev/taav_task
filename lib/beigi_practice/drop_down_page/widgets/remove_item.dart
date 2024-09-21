import 'package:flutter/material.dart';

class RemoveItem extends StatefulWidget {
  const RemoveItem({
    super.key,
    required this.targetValue,
  });

  final void Function(String) targetValue;

  @override
  State<RemoveItem> createState() => _RemoveItemState();
}

class _RemoveItemState extends State<RemoveItem> {
  late final TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: textEditingController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), hintText: "Enter target here"),
        ),
        ElevatedButton(
            onPressed: () {
              widget.targetValue(textEditingController.text);
              textEditingController.clear();
            },
            child: const Text('remove')),
      ],
    );
  }
}
