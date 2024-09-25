import 'package:flutter/material.dart';

enum WidgetCustomEnum {
  red('Red', Colors.red),
  blue('Blue', Colors.blue),
  yellow('Yellow', Colors.yellow),
  green('Green', Colors.green);

  final String title;
  final Color color;

  const WidgetCustomEnum(this.title, this.color);
}
