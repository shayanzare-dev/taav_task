import 'package:flutter/material.dart';

import 'change_language.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(children: [
      SizedBox(
        width: double.infinity,
        height: 120,
        child: ColoredBox(
          color: Colors.green,
          child: Center(child: Text('اپلیکیشن من')),
        ),
      ),
      ChangeLanguage()
    ]);
  }
}


