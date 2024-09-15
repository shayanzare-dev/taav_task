import 'package:flutter/material.dart';
import 'package:untitled/call_back_practice/widgets/sample_button.dart';

import 'widgets/my_drawer.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void _onTap(int newCounter) {
    setState(() => _counter = newCounter);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: MyDrawer(
          counter: _counter,
        ),
        body: _body(),
      ),
    );
  }

  Widget _body() => Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SampleButton(
            onTap: _onTap,
            counter: _counter,
          ),
        ],
      );
}
