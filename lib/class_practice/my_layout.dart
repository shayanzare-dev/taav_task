import 'package:flutter/cupertino.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
      builder: (context, constraints) => Stack(
            children: [
              Text('min height => ${constraints.minHeight} max height => ${constraints.maxHeight}'),
              Text('min width => ${constraints.minHeight} max height => ${constraints.maxHeight}'),
            ],
          ));
}
