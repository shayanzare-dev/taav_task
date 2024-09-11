import 'package:flutter/material.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({required this.child, super.key, required this.name});

  final String name;
  final Widget child;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) => Column(
          children: <Widget>[
            Text(name),
            Text(
              "W: ${constraints.minWidth} --> ${constraints.maxWidth}\n"
              "H: ${constraints.minHeight} --> ${constraints.maxHeight}",
            ),
            child,
          ],
        ),
      );
}
