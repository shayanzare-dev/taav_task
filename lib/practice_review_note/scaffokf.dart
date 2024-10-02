import 'package:flutter/material.dart';

import '../utils/show_snack_bar.dart';

class Scaffokf extends StatefulWidget {
  const Scaffokf({super.key});

  @override
  State<Scaffokf> createState() => _ScaffokfState();
}

class _ScaffokfState extends State<Scaffokf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              shayanShowSnackBar(context, value: 'hellooo');
            });
          },
          child: const Icon(Icons.add),
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Container(
                color: Colors.red,
              ),
            ),
            Positioned.fill(
              child: Container(
                color: Colors.green,
              ),
            ),
            Positioned.fill(
              child: Container(
                color: Colors.yellow,
              ),
            ),
            Positioned.fill(
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ));
  }

}
