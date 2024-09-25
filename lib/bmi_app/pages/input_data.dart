import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'show_result.dart';
import '../enums/bmi.dart';
import '../enums/gender.dart';
import '../widgets/gender_widget.dart';
import 'dart:math';

class InputData extends StatefulWidget {
  const InputData({super.key});

  @override
  State<InputData> createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  Gender _gender = Gender.male;
  BmiEnum _bmiEnum = BmiEnum.normal;
  double _bmi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI Calculator')),
      body: _body(),
    );
  }

  //* Widgets------------------------------------------------------------------

  Widget _body() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _nameField(),
            _verticalGap(),
            _heightField(),
            _verticalGap(),
            _weightField(),
            _verticalGap(),
            _genders(),
            _verticalGap(),
            _calculateButton(),
          ],
        ),
      ),
    );
  }

  Widget _genders() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: _male()),
        _horizentalGap(),
        Expanded(child: _female()),
      ],
    );
  }

  Widget _nameField() => TextFormField(
        controller: _nameController,
        validator: _validator,
        decoration: const InputDecoration(
            label: Text('Name'), border: OutlineInputBorder()),
      );

  Widget _heightField() => TextFormField(
        validator: _validator,
        controller: _heightController,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          label: Text('Height'),
          suffixText: 'CM',
          border: OutlineInputBorder(),
        ),
      );

  Widget _weightField() => TextFormField(
        validator: _validator,
        controller: _weightController,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          label: Text('Weight'),
          suffixText: 'KG',
          border: OutlineInputBorder(),
        ),
      );

  Widget _calculateButton() {
    return InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: _goToResult,
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Calculate',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ));
  }

  Widget _male() {
    return GenderWidget(
      value: Gender.male,
      onTap: _changeGender,
      selectedValue: _gender,
    );
  }

  Widget _female() {
    return GenderWidget(
      value: Gender.female,
      onTap: _changeGender,
      selectedValue: _gender,
    );
  }

  SizedBox _verticalGap() => const SizedBox(height: 10);
  SizedBox _horizentalGap() => const SizedBox(width: 10);

  //* Methods------------------------------------------------------------------

  void _changeGender(Gender newValue) {
    setState(() {
      _gender = newValue;
    });
  }

  String? _validator(String? input) {
    if (input == null || input.isEmpty) return 'required';
    return null;
  }

  void _goToResult() async {
    if (_formKey.currentState?.validate() ?? false) {
      _bmi = _calculate();
      _bmiEnum = _bmiEnumCalculate(_bmi);

      bool? result = await Navigator.push<bool?>(
        context,
        MaterialPageRoute(
          builder: (_) => ShowResult(
            name: _nameController.text,
            gender: _gender,
            bmiEnum: _bmiEnum,
            bmi: _bmi,
          ),
        ),
      );

      if (result != null) {
        if (result) {
          _nameController.clear();
          _heightController.clear();
          _weightController.clear();
          _gender = Gender.male;
        }
      }
    }
  }

  BmiEnum _bmiEnumCalculate(double bmi) {
    switch (bmi) {
      case < 18.5:
        return BmiEnum.underWeight;
      case > 18.5 && < 24.9:
        return BmiEnum.normal;
      case > 25 && < 29.9:
        return BmiEnum.overWeight;
      case > 30:
        return BmiEnum.obese;

      default:
        return BmiEnum.normal;
    }
  }

  double _calculate() {
    final double weight = double.parse(_weightController.text);
    final double height = double.parse(_heightController.text) / 100;

    return (weight / pow(height, 2)).floorToDouble();
  }
}
