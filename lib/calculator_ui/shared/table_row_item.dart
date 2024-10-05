import 'package:flutter/material.dart';

class TableRowItem<T extends Widget> extends StatelessWidget {
  const TableRowItem({
    super.key,
    this.title,
    this.titleText,
    required this.color,
    this.colorText = Colors.white,
    required this.onTap,
   // required this.value,
  }) : assert(title != null || titleText != null,
            'one of the field must has value');

  final T? title;
  final String? titleText;
  final Color color;
  ///final String value;
  final Color colorText;
  final void Function() onTap;

  BoxDecoration _decoration(Color color) => BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      );

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.all(6.0),
      child: InkWell(
        borderRadius: _decoration(color).borderRadius as BorderRadius,
        onTap: onTap,
        child: Container(
          height: 65,
          decoration: _decoration(color),
          child: Center(
            child: title ??
                Text(
                  titleText!,
                  style: TextStyle(color: colorText, fontSize: 20),
                ),
          ),
        ),
      ));
}
