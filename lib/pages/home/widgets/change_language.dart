import 'package:flutter/material.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({
    super.key,
  });

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
        },
        icon: const Icon(
          Icons.translate,
          color: Colors.white,
        ));
  }
}
