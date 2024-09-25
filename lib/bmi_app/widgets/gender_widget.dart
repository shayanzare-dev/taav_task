import 'package:flutter/material.dart';

import '../enums/gender.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({required this.value,
    required this.onTap,
    required this.selectedValue,
    super.key});

  final Gender value;
  final Gender selectedValue;
  final void Function(Gender newValue) onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: _borderRadius(),
      onTap: () => onTap(value),
      child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.cyan),
            borderRadius: _borderRadius(),
            color: selectedV ? Colors.blue : Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              textAlign: TextAlign.center,
              value.title,
              style: TextStyle(color: selectedV ? Colors.white : Colors.blue),
            ),
          )),
    );
  }

  BorderRadius _borderRadius() => BorderRadius.circular(12);

  bool get selectedV => selectedValue == value;
}
