import 'dart:ui';

class LocaleManager {
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  void setLocale() {
    if (locale == const Locale('en')) {
      _locale = const Locale('fa');
    } else {
      _locale = const Locale('en');
    }
  }
}
