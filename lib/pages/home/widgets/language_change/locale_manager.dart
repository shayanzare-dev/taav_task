import 'dart:ui';

class LocaleManager {
  static Locale _locale = const Locale('en');

  Locale get locale => _locale;

  void changeLocale() {
    if (_locale == const Locale('en')) {
      _locale = const Locale('fa');
      print('run fa');
    } else if (_locale == const Locale('fa')) {
      _locale = const Locale('en');
      print('run en');
    }
  }
}
