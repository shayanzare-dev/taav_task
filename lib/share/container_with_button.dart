import 'package:flutter/material.dart';

import '../my_bmi_app/enums/gender.dart';

class ContainerWithButton extends StatelessWidget {
  const ContainerWithButton({
    super.key,
    required this.decoration,
    required this.gender,
    required this.onTap,
  });

  final BoxDecoration decoration;
  final void Function(Gender) onTap;
  final Gender gender;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: decoration.borderRadius as BorderRadius,
      onTap: () => onTap(gender),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: decoration,
        child: Center(child: Text(gender.title)),
      ),
    );
  }
}
