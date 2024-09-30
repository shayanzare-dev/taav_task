import 'package:flutter/material.dart';
import 'package:untitled/my_bmi_app/pages/bmi_page.dart';

class MyBmiApp extends StatelessWidget {
  const MyBmiApp({super.key});

  static BorderRadius borderRadius = BorderRadius.circular(20);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: SafeArea(
      child: BmiPage(),
    ));
  }
}
