import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final LocaleManager _localeManager = LocaleManager();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: _localeManager.locale,
      supportedLocales: [
        Locale('en'),
        Locale('fa'),
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: HomeScreen(
        localeManager: _localeManager,
        onLocaleChanged: (Locale newLocale) {
          printToConsole('locale called');
          setState(() {
            _localeManager.setLocale(newLocale);
          });
        },
      ),
    );
  }
}

class LocaleManager {
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    _locale = locale;
  }
}

class HomeScreen extends StatelessWidget {
  final LocaleManager localeManager;
  final ValueChanged<Locale> onLocaleChanged;

  const HomeScreen(
      {super.key, required this.localeManager, required this.onLocaleChanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locale Changer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                onLocaleChanged(Locale('fa'));
              },
              child: Text('تغییر به فارسی'),
            ),
            ElevatedButton(
              onPressed: () {
                onLocaleChanged(const Locale('en'));
              },
              child: const Text('Change to English'),
            ),
          ],
        ),
      ),
    );
  }
}
