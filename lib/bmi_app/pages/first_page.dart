import 'package:flutter/material.dart';
import 'secound_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      body: _body(),
    );
  }

  Widget _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('click the button to increase the number below'),
          const SizedBox(height: 10),
          Text('$_number', style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 10),
          _buttons()
        ],
      ),
    );
  }

  Widget _buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _addButton(),
        _nextButton(),
      ],
    );
  }

  Widget _nextButton() {
    return IconButton(
      onPressed: _goToSecoundPage,
      icon: const Icon(Icons.arrow_forward),
    );
  }

  Widget _addButton() {
    return IconButton(
        onPressed: () => setState(() => ++_number),
        icon: const Icon(Icons.add));
  }

  Future<void> _goToSecoundPage() async {
    final bool? result = await Navigator.push<bool?>(
      context,
      MaterialPageRoute(
        builder: (_) => SecoundPage(value: _number),
      ),
    );

    if (result != null) {
      (result) ? setState(() => _number = 1) : setState(() => _number = -1);
    }
  }
}
