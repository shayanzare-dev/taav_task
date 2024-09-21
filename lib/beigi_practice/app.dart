import 'package:flutter/material.dart';
import 'package:untitled/beigi_practice/drop_down_page/drop_down_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(child: DropDownPage()),
    );
  }
}
