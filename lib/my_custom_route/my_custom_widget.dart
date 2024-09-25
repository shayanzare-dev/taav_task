import 'package:flutter/material.dart';
import 'package:untitled/my_custom_route/widget_custom_enum.dart';

class MyCustomWidget extends StatelessWidget {
  const MyCustomWidget(
      {super.key, required this.enumValue, required this.onTap});

  final WidgetCustomEnum enumValue;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: enumValue.color,
        padding: const EdgeInsets.all(32),
        child: Text(enumValue.title),
      ),
    );
  }
}
