import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 120,
      child: ColoredBox(
        color: Colors.grey,
        child: Center(child: Text('اپلیکیشن من')),
      ),
    );
  }
}
