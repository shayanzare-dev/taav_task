import 'package:flutter/material.dart';

import 'home_page/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(child: HomePage()),
    );
  }
}
