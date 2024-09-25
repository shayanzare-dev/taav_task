import 'package:flutter/material.dart';

class GenderChooser extends StatefulWidget {
  const GenderChooser({super.key});

  @override
  State<GenderChooser> createState() => _GenderChooserState();
}

class _GenderChooserState extends State<GenderChooser> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() => isSelectedDecoration = !isSelectedDecoration),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: isSelectedDecoration
            ? _selectedBoxDecoration()
            : _unSelectedBoxDecoration(),
        child: Center(child: const Text('Female')),
      ),
    );
  }

  bool isSelectedDecoration = true;

  BoxDecoration _selectedBoxDecoration() => BoxDecoration(
      borderRadius: BorderRadius.circular(12), color: Colors.green);

  BoxDecoration _unSelectedBoxDecoration() => BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.green));
}
