import 'package:flutter/material.dart';
import 'package:untitled/my_custom_route/pages/blue_page.dart';

import 'home_page.dart';
import 'pages/green_page.dart';
import 'pages/red_page.dart';
import 'pages/yellow_page.dart';

class ShayanApp extends StatelessWidget {
  const ShayanApp({super.key});

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ShayanApp.route,
      routes: {
        BluePage.route: (context) => const BluePage(),
        YellowPage.route: (context) => const YellowPage(),
        GreenPage.route: (context) => const GreenPage(),
        RedPage.route: (context) => const RedPage(),
      },
      home: const HomePage(),
    );
  }
}
