import 'person.dart';

class DataBase {
  static List<Person> peopleInformation =
      List.generate(25, (index) => Person(name: 'شایان', lastName: 'زارع'));
}
