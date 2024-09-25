import 'package:flutter/material.dart';
import 'package:untitled/my_custom_route/widget_custom_enum.dart';

class RedPage extends StatelessWidget {
  const RedPage({super.key});

  static const String route = '/red-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WidgetCustomEnum.red.color,
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Text(WidgetCustomEnum.red.title),
          )
        ],
      ),
    );
  }
}
