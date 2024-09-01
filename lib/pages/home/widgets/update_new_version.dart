import 'package:flutter/material.dart';

class UpdateNewVersion extends StatelessWidget {
  const UpdateNewVersion({super.key});

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(16)),
        child: const Text('افزودن ویژگی جدید', textAlign: TextAlign.end),
      );
}
