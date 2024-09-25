import 'package:flutter/material.dart';

class SecoundPage extends StatelessWidget {
  const SecoundPage({super.key, required this.value});

  final int value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Secound Page')),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _title(),
        const SizedBox(height: 10),
        _buttons(context),
      ],
    ));
  }

  Widget _buttons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _back(context),
        _greenBack(context),
        _redBack(context),
      ],
    );
  }

  Widget _title() {
    return Text('Value : $value');
  }

  Widget _back(BuildContext context) {
    return IconButton(
      onPressed: () => _onBackTap(context),
      icon: const Icon(Icons.arrow_back),
    );
  }

  Widget _greenBack(BuildContext context) {
    return IconButton(
      onPressed: () => _onGreenTap(context),
      icon: const Icon(Icons.arrow_back, color: Colors.green),
    );
  }

  Widget _redBack(BuildContext context) {
    return IconButton(
      onPressed: () => _onRedTap(context),
      icon: const Icon(Icons.arrow_back, color: Colors.red),
    );
  }

  void _onBackTap(BuildContext context) {
    Navigator.pop(context);
  }

  void _onGreenTap(BuildContext context) {
    Navigator.pop(context, true);
  }

  void _onRedTap(BuildContext context) {
    Navigator.pop(context, false);
  }
}
