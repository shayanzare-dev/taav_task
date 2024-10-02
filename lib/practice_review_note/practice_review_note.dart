import 'package:flutter/material.dart';
import 'package:untitled/practice_review_note/scaffokf.dart';

void main() {
  runApp(const MyPracticeApp());
}

class MyPracticeApp extends StatelessWidget {
  const MyPracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffokf());
  }
}
