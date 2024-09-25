import 'package:flutter/material.dart';
import 'package:untitled/my_custom_route/widget_custom_enum.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({super.key});
  static const String route = '/green-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WidgetCustomEnum.green.color,
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Text(WidgetCustomEnum.green.title),
          )
        ],
      ),
    );
  }
}
