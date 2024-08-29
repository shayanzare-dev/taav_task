import 'dart:math';

class Person {
  static int idGenerator = 0;

  final String name;
  final String lastName;
  late int age;
  final int id;

  Person({required this.name, required this.lastName}) : id = ++idGenerator {
    age = _ageGenerator();
  }

  int _ageGenerator() {
    return Random().nextInt(99);
  }
}
