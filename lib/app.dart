import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled/todo/todo_page.dart';

import 'list_data_app/pages/home/widgets/language_change/locale_manager.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final LocaleManager localeManager = LocaleManager();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: localeManager.locale,
        title: 'review on localization',
        theme: ThemeData(
          primaryColor: Colors.grey.shade600,
        ),
        home: const TodoPage());
  }
}
