import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled/pages/home/home_page.dart';
import 'package:untitled/pages/home/widgets/language_change/locale_manager.dart';

class App extends StatelessWidget {
  App({super.key});

  final LocaleManager locale = LocaleManager();

  @override
  Widget build(BuildContext context) {
   // Locale locale = const Locale('fa');
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale.locale,
      title: 'review on localization',
      theme: ThemeData(
        primaryColor: Colors.grey.shade600,
      ),
      home: const HomePage(),
    );
  }
}
