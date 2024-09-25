import 'package:flutter/material.dart';

enum BmiEnum {
  normal(
    'Normal',
    Colors.green,
  ),
  underWeight(
    'Under Weight',
    Colors.orange,
  ),
  overWeight(
    'Over Weight',
    Colors.red,
  ),

  obese(
    'Obese',
    Color.fromARGB(255, 114, 19, 12),
  );

  const BmiEnum(this.label, this.color);

  final String label;
  final Color color;
}
