import 'package:flutter/material.dart';
import 'package:untitled/calculator_ui/eunms/numbers.dart';
import 'package:untitled/calculator_ui/eunms/operators.dart';
import 'package:untitled/calculator_ui/shared/table_row_item.dart';
import 'package:untitled/utils/show_snack_bar.dart';

class UserInput extends StatefulWidget {
  const UserInput({
    super.key,
    required this.resultValue,
  });

  final void Function(String? value, {num? equalValue}) resultValue;

  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  final Color primaryItemColor = const Color(0xff343434);

  final Color specialValueColor = const Color(0xff66FF7F);

  final Map<String, String> events = {};
  String _eventValue = '';

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Table(
            children: [
              TableRow(
                children: [
                  TableRowItem(
                    onTap: () {
                      setState(() {
                        events.clear();
                        widget.resultValue(null);
                      });
                    },
                    titleText: Operators.clear.title,
                    color: Colors.red,
                    colorText: const Color(0xff343434),
                  ),
                  TableRowItem(
                    onTap: () =>
                        shayanShowSnackBar(context, value: 'i don\'t know'),
                    titleText: '( )',
                    color: primaryItemColor,
                    colorText: specialValueColor,
                  ),
                  TableRowItem(
                    onTap: () {
                      events.addEntries(
                          [MapEntry(Operators.percent.title, _eventValue)]);
                      _eventValue = '';
                      widget.resultValue(Operators.percent.title);
                    },
                    titleText: Operators.percent.title,
                    color: primaryItemColor,
                    colorText: specialValueColor,
                  ),
                  TableRowItem(
                    onTap: () {
                      events.addEntries(
                          [MapEntry(Operators.division.title, _eventValue)]);
                      _eventValue = '';
                      widget.resultValue(Operators.division.title);
                    },
                    titleText: Operators.division.title,
                    color: primaryItemColor,
                    colorText: specialValueColor,
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableRowItem(
                    onTap: () {
                      _eventValue += Numbers.seven.value.toString();
                      widget.resultValue(Numbers.seven.value.toString());
                    },
                    titleText: Numbers.seven.value.toString(),
                    color: primaryItemColor,
                  ),
                  TableRowItem(
                    onTap: () {
                      _eventValue += Numbers.eight.value.toString();
                      widget.resultValue(Numbers.eight.value.toString());
                    },
                    titleText: Numbers.eight.value.toString(),
                    color: primaryItemColor,
                  ),
                  TableRowItem(
                    onTap: () {
                      _eventValue += Numbers.nine.value.toString();
                      widget.resultValue(Numbers.nine.value.toString());
                    },
                    titleText: Numbers.nine.value.toString(),
                    color: primaryItemColor,
                  ),
                  TableRowItem(
                    onTap: () {
                      events.addEntries([
                        MapEntry(Operators.multiplication.title, _eventValue)
                      ]);
                      _eventValue = '';
                      widget.resultValue(Operators.multiplication.title);
                    },
                    titleText: Operators.multiplication.title,
                    color: primaryItemColor,
                    colorText: specialValueColor,
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableRowItem(
                    onTap: () {
                      _eventValue += Numbers.four.value.toString();
                      widget.resultValue(Numbers.four.value.toString());
                    },
                    titleText: Numbers.four.value.toString(),
                    color: primaryItemColor,
                  ),
                  TableRowItem(
                    onTap: () {
                      _eventValue += Numbers.five.value.toString();
                      widget.resultValue(Numbers.five.value.toString());
                    },
                    titleText: Numbers.five.value.toString(),
                    color: primaryItemColor,
                  ),
                  TableRowItem(
                    onTap: () {
                      _eventValue += Numbers.six.value.toString();
                      widget.resultValue(Numbers.six.value.toString());
                    },
                    titleText: Numbers.six.value.toString(),
                    color: primaryItemColor,
                  ),
                  TableRowItem(
                    onTap: () {
                      events.addEntries(
                          [MapEntry(Operators.percent.title, _eventValue)]);
                      _eventValue = '';
                      widget.resultValue(Operators.mines.title);
                    },
                    titleText: Operators.mines.title,
                    color: primaryItemColor,
                    colorText: specialValueColor,
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableRowItem(
                    onTap: () {
                      _eventValue += Numbers.one.value.toString();
                      widget.resultValue(Numbers.one.value.toString());
                    },
                    titleText: Numbers.one.value.toString(),
                    color: primaryItemColor,
                  ),
                  TableRowItem(
                    onTap: () {
                      _eventValue += Numbers.two.value.toString();
                      widget.resultValue(Numbers.two.value.toString());
                    },
                    titleText: Numbers.two.value.toString(),
                    color: primaryItemColor,
                  ),
                  TableRowItem(
                    onTap: () {
                      _eventValue += Numbers.three.value.toString();
                      widget.resultValue(Numbers.three.value.toString());
                    },
                    titleText: Numbers.three.value.toString(),
                    color: primaryItemColor,
                  ),
                  TableRowItem(
                    onTap: () {
                      events.addEntries(
                          [MapEntry(Operators.plus.title, _eventValue)]);
                      _eventValue = '';
                      widget.resultValue(Operators.plus.title);
                    },
                    titleText: Operators.plus.title,
                    color: primaryItemColor,
                    colorText: specialValueColor,
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableRowItem(
                    onTap: () {
                      events.addEntries(
                          [MapEntry(Operators.collection.title, _eventValue)]);
                      _eventValue = '';
                      widget.resultValue(Operators.collection.title);
                    },
                    titleText: Operators.collection.title,
                    color: primaryItemColor,
                  ),
                  TableRowItem(
                    onTap: () {
                      _eventValue += Numbers.zero.value.toString();
                      widget.resultValue(Numbers.zero.value.toString());
                    },
                    titleText: Numbers.zero.value.toString(),
                    color: primaryItemColor,
                  ),
                  TableRowItem(
                    onTap: () {
                      events.addEntries(
                          [MapEntry(Operators.dot.title, _eventValue)]);
                      _eventValue = '';
                      widget.resultValue(Operators.dot.title);
                    },
                    titleText: Operators.dot.title,
                    color: primaryItemColor,
                  ),
                  TableRowItem(
                    onTap: () {
                      events.addEntries(
                          [MapEntry(Operators.equal.title, _eventValue)]);
                      num value = 0;
                      for (final String keyItem in events.keys) {
                        //   if (keyItem == Operators.plus.title) {
                        value += num.tryParse(events[keyItem]!)!;
                        print(value);
                      }
                      widget.resultValue(Operators.equal.title,
                          equalValue: value);
                    },
                    titleText: Operators.equal.title,
                    color: primaryItemColor,
                    colorText: specialValueColor,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
