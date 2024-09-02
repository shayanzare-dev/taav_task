import 'package:flutter/material.dart';

import '../../data_base/data_base.dart';
import '../../data_base/person.dart';

class People extends StatelessWidget {
  People({super.key});

  List<Widget> generateItems(BuildContext context) {
    final List<Person> people = DataBase.getPeopleInformation(context);
    return List.generate(people.length, (index) {
      final Person person = people[index];
      return Container(
        margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.blue,
        ),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '${person.name} ${person.lastName}',
              ),
              Text(
                '${person.age}',
              ),
              Text(
                '${person.id}',
              ),
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: generateItems(context));
  }
}