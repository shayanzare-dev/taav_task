import 'package:flutter/material.dart';
import 'package:untitled/pages/home/widgets/language_change/locale_manager.dart';

class ChangeLanguage extends StatefulWidget {
 // final void Function({required Locale locale}) changeLocale;
  final LocaleManager localeManager = LocaleManager();

  ChangeLanguage({
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
          setState(() {

            widget.localeManager.setLocale();
          });
        },
        icon: const Icon(
          Icons.translate,
          color: Colors.white,
        ));
  }
}
