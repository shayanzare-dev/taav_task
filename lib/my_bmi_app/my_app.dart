import 'package:flutter/material.dart';
import 'package:untitled/my_bmi_app/pages/bmi_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: SafeArea(
      child: BmiPage(),
    ));
  }
}
