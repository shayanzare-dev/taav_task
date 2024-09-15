import 'package:flutter/material.dart';

void shayanShowSnackBar(BuildContext context,
    {required String value, Color backgroundColor = Colors.red}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(value),
      backgroundColor: backgroundColor,
    ),
  );
}
