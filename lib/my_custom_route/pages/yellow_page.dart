import 'package:flutter/material.dart';
import 'package:untitled/my_custom_route/widget_custom_enum.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({super.key});

  static const String route = '/yellow-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WidgetCustomEnum.yellow.color,
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Text(WidgetCustomEnum.yellow.title),
          )
        ],
      ),
    );
  }
}
