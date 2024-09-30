import 'package:flutter/material.dart';
import 'package:untitled/my_bmi_app/my_app.dart';

import '../enums/gender.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.gender,
    required this.name,
    required this.height,
    required this.weight,
  });

  final Gender gender;
  final int height;
  final int weight;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).width / 1.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '${gender.value}-$name',
                style: const TextStyle(fontSize: 30),
              ),
              Text(
                'result MBI => ${_bmiCalculate()}',
                style: const TextStyle(color: Colors.red, fontSize: 35),
              ),
              InkWell(
                onTap: () => Navigator.pop<bool?>(context, true),
                borderRadius: MyBmiApp.borderRadius,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: MyBmiApp.borderRadius,
                  ),
                  child: const Center(child: Text('Reset')),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  String _bmiCalculate() {
    double result = weight / ((height / 100) * height / 100);
    switch (result) {
      case (<= 18.5):
        return 'Underweight';
      case (> 18.5):
      case (<= 24.9):
        return 'Normal Weight';
      case (>= 25.0):
      case (<= 29.9):
        return 'Overweight';
      case (>= 30):
      case (<= 34.9):
        return 'Obese class I';
      case (>= 35.0):
      case (<= 39.9):
        return 'Obese class II';
    }
    return 'Obese class III';
  }
}
