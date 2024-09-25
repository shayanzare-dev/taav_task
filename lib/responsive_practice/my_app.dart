import 'package:flutter/material.dart';
import 'package:untitled/my_custom_route/enums/break_point.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _bodyForSmall(),
      ),
    );
  }

  double widthPage(BuildContext context) => MediaQuery.sizeOf(context).width;

  Widget _contentBody(BuildContext context) {
    if (widthPage(context) < BreakPoint.small.value) {
      return _bodyForSmall();
    }

    return _bodyForLarge();
  }

  // double fontSize(){
  //
  // }
  Widget _bodyForSmall() => Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cancel,
                color: Colors.red,
              )),
          const Column(
            children: [
              Text('shayan'),
              Text('Hello world'),
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          )
        ],
      );

  Widget _bodyForLarge() => Column();
}
