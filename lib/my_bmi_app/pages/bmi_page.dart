import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/my_bmi_app/my_app.dart';
import 'package:untitled/my_bmi_app/pages/result_page.dart';
import 'package:untitled/my_bmi_app/pages/widgets/my_form.dart';
import 'package:untitled/utils/show_snack_bar.dart';

import '../../share/container_with_button.dart';
import '../enums/gender.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({super.key});

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Gender genderValue = Gender.male;
  late final TextEditingController _nameController;

  late final TextEditingController _heightController;

  late final TextEditingController _weightController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _heightController = TextEditingController();
    _weightController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: _body(),
      ),
    );
  }

  Widget _body() => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bmi page',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            MyForm(
              formKey: _formKey,
              nameController: _nameController,
              heightController: _heightController,
              weightController: _weightController,
            ),
            _gap(),
            _chooseGenderView(),
            _gap(),
            _calculateView(),
          ],
        ),
      );

  Widget _chooseGenderView() {
    return Row(
      children: [
        Expanded(
          child: ContainerWithButton(
            onTap: (value) => setState(() => genderValue = value),
            decoration: genderValue == Gender.male
                ? _selectedBoxDecoration()
                : _unSelectedBoxDecoration(),
            gender: Gender.male,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: ContainerWithButton(
              decoration: genderValue == Gender.female
                  ? _selectedBoxDecoration()
                  : _unSelectedBoxDecoration(),
              gender: Gender.female,
              onTap: (value) => setState(() => genderValue = value)),
        )
      ],
    );
  }

  Widget _gap() => const SizedBox(height: 15);

  Widget _calculateView() {
    return InkWell(
      onTap: _onClickLogic,
      borderRadius: MyBmiApp.borderRadius,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: MyBmiApp.borderRadius,
        ),
        child: const Center(child: Text('Calculator')),
      ),
    );
  }

  Future<void> _onClickLogic() async {
    if (_formKey.currentState?.validate() ?? false) {
      bool? result = await goToResultPage();
      if (result != null && result) {
        _onDeleteData();
      }
    } else {
      shayanShowSnackBar(context, value: 'sorry! data is not valid');
    }
  }

  Future<bool?> goToResultPage() async {
    return await Navigator.push<bool?>(
        context,
        MaterialPageRoute(
            builder: (_) => ResultPage(
                  gender: genderValue,
                  name: _nameController.text,
                  height: int.parse(_heightController.text),
                  weight: int.parse(_weightController.text),
                )));
  }

  void _onDeleteData() {
    _nameController.clear();
    _weightController.clear();
    _heightController.clear();
  }

  BoxDecoration _selectedBoxDecoration() => BoxDecoration(
      borderRadius: BorderRadius.circular(12), color: Colors.green);

  BoxDecoration _unSelectedBoxDecoration() => BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.green));
}
