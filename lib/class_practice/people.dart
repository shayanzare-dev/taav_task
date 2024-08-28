import 'package:flutter/material.dart';

class People extends StatelessWidget {
  People({super.key});

  final List<Widget> items = List.generate(
    50,
    (index) => Container(
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      color: Colors.green,
      width: double.infinity,
      child: Text(
        'شایان زارع',
        textAlign: TextAlign.end,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(children: items);
  }
}
