import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled/pages/home/home_page.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    Locale locale = const Locale('en');
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale,
      title: 'title',
      theme: ThemeData(
        primaryColor: Colors.grey.shade600,
      ),
      home: const HomePage(),
    );
  }
}