import 'package:flutter/material.dart';

class UpdateNewVersion extends StatelessWidget {
  const UpdateNewVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: const Text('افزودن ویژگی جدید', textAlign: TextAlign.end),
    );
  }
}
