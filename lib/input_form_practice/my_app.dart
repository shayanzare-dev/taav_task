import 'package:flutter/material.dart';
import 'package:untitled/input_form_practice/main_screen/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'I Love Flutter',
      home: HomePage(),
    );
  }
}
