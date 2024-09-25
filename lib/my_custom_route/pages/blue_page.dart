import 'package:flutter/material.dart';
import 'package:untitled/my_custom_route/widget_custom_enum.dart';

class BluePage extends StatelessWidget {
  const BluePage({super.key});

  static const String route = '/blue-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WidgetCustomEnum.blue.color,
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Text(WidgetCustomEnum.blue.title),
          )
        ],
      ),
    );
  }
}
