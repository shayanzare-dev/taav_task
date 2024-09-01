import 'package:flutter/material.dart';

import '../../data_base/data_base.dart';
import '../../data_base/person.dart';

class People extends StatelessWidget {
  People({super.key});

  final List<Widget> items =
      List.generate(DataBase.peopleInformation.length, (index) {
    final Person person = DataBase.peopleInformation[index];
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
              textAlign: TextAlign.end,
            ),
            Text(
              '${person.age}',
              textAlign: TextAlign.end,
            ),
            Text(
              '${person.id}',
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
    );
  });

  @override
  Widget build(BuildContext context) => Column(children: items);
}
