import 'package:flutter/material.dart';

import 'widgets/user_input.dart';
import 'widgets/user_result.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String value = '';
  bool _isActiveResultUi = false;
  num _equalValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _body(context)),
    );
  }

  Widget _body(BuildContext context) => Column(
        children: [
          Expanded(
              child: UserResult(
                  value: value,
                  isActiveUi: _isActiveResultUi,
                  resultValue: _equalValue)),
          const Divider(
            color: Colors.green,
            indent: 12,
            endIndent: 12,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 1.7,
            child: UserInput(
              resultValue: (p0, {num? equalValue}) => setState(() {
                if (equalValue != null) {
                  _isActiveResultUi = true;
                  _equalValue = equalValue;
                } else {
                  _isActiveResultUi = false;
                }

                if (p0 != null) {
                  value += p0;
                } else {
                  value = '';
                }
              }),
            ),
          ),
        ],
      );
}
