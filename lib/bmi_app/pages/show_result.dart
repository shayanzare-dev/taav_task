import 'package:flutter/material.dart';
import '../enums/bmi.dart';
import '../enums/gender.dart';

class ShowResult extends StatelessWidget {
  const ShowResult({
    super.key,
    required this.name,
    required this.gender,
    required this.bmiEnum,
    required this.bmi,
  });

  final String name;
  final Gender gender;
  final BmiEnum bmiEnum;
  final double bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(context),
    );
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      title: const Text('Result'),
    );
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${gender.title} $name',
              style: const TextStyle(fontSize: 22),
            ),
            _gap(),
            Text(
              'BMI : $bmi',
              style: TextStyle(color: _color, fontSize: 20),
            ),
            _gap(),
            Text(
              'You are in the ${bmiEnum.label} range ',
              style: TextStyle(color: _color, fontSize: 20),
            ),
            _bigGap(),
            _resetButton(context)
          ],
        ),
      ),
    );
  }

  Widget _resetButton(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => _onReset(context),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'RESET',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ));
  }

  SizedBox _gap() => const SizedBox(height: 10);
  SizedBox _bigGap() => const SizedBox(height: 60);

  Color get _color => bmiEnum.color;

  void _onReset(BuildContext context) {
    Navigator.pop(context, true);
  }
}
