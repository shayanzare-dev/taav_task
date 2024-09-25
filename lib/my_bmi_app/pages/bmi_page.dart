import 'package:flutter/material.dart';
import 'package:untitled/my_bmi_app/pages/widgets/gender_chooser.dart';
import 'package:untitled/my_bmi_app/pages/widgets/my_form.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({super.key});

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  final BorderRadius _borderRadius = BorderRadius.circular(20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: _body(),
      ),
    );
  }

  Widget _body() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Bmi page',
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
      const MyForm(),
     GenderChooser(),
      _gap(),
      _calculate(),
    ],
  );

  Widget _gap() => const SizedBox(height: 12);

  Widget _calculate() {
    return InkWell(
      onTap: () {},
      borderRadius: _borderRadius,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: _borderRadius,
        ),
        child: const Center(child: Text('Calculator')),
      ),
    );
  }
}
