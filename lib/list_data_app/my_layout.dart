import 'package:flutter/material.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
      builder: (context, constraints) => Column(
            children: [
              Text(
                'min height => ${constraints.minHeight} max height => ${constraints.maxHeight}\n'
                'min width => ${constraints.minWidth} max width => ${constraints.maxWidth}',
                style: const TextStyle(color: Colors.black, fontSize: 30),
              ),
              child,
            ],
          ));
}
