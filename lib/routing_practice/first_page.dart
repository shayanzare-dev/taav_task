import 'package:flutter/material.dart';
import 'package:untitled/routing_practice/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _counter = 0;

  @override
  void activate() {
    print('deactive');
    super.activate();
  }

// todo(SHAYAN ZARE): im going to do it;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: _body(context)));
  }

  Widget _body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(_counter.toString()),
        ElevatedButton(
          onPressed: () => _goToNextPage(context),
          child: Text('go to next page'),
        ),
        ElevatedButton(
          onPressed: () => setState(() => ++_counter),
          child: Text('plus'),
        ),
      ],
    );
  }

  Future<void> _goToNextPage(BuildContext context) async {
    final bool? result = await Navigator.push<bool?>(
        context,
        MaterialPageRoute(
          builder: (_) => SecondPage(counter: _counter),
        ));

    if (result != null) {
      if (result) {
        _counter = 1;
      } else {
        _counter = -1;
      }
    }
    setState(() {});
  }
}
