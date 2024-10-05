import 'package:flutter/material.dart';

class UserResult extends StatelessWidget {
  const UserResult({
    super.key,
    required this.value,
    required this.isActiveUi,
    required this.resultValue,
  });

  final String value;
  final bool isActiveUi;
  final num resultValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
          child: !isActiveUi
              ? Text(
                  value,
                  style: const TextStyle(fontSize: 40),
                )
              : Column(
                  children: [
                    Text(
                      value,
                      style: const TextStyle(fontSize: 30, color: Colors.red),
                    ),
                    Text(
                      '$resultValue',
                      style: const TextStyle(fontSize: 40),
                    ),
                  ],
                )),
    );
  }
}
