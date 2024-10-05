import 'package:flutter/material.dart';
import 'package:untitled/calculator_ui/calculator_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      title: 'lux calculator',
      home: CalculatorPage(),
    );
  }
}
