import 'package:flutter/material.dart';
import 'package:untitled/pages/data_base/item.dart';

import 'person.dart';

class DataBase {
  static List<Person> getPeopleInformation(BuildContext context) {
    // دسترسی به اطلاعات بر اساس context
    final locale = Localizations.localeOf(context).languageCode;

    if (locale == 'fa') {
      return List.generate(
          25, (index) => Person(name: 'شایان', lastName: 'زارع'));
    } else {
      return List.generate(
          25, (index) => Person(name: 'Shayan', lastName: 'Zare'));
    }
  }

  static List<Item> getItems(BuildContext context) {
    final String locale = Localizations.localeOf(context).languageCode;

    if (locale == 'fa') {
      return List.generate(21, (index) => Item(name: 'سیب زمینی'));
    } else {
      return List.generate(10, (index) => Item(name: 'potato'));
    }
  }
}
