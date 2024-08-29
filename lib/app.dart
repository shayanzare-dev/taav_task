import 'package:flutter/material.dart';
import 'package:untitled/pages/home/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.grey.shade600,
      ),
      home: const HomePage(),
    );
  }
}
