import 'dart:math';

import 'package:flutter/material.dart';

const String fontFamily = 'godOfWar';

void main() => runApp(Example1());

class Example1 extends StatefulWidget {
  const Example1({super.key});

  @override
  State<Example1> createState() => _Example1State();
}

class _Example1State extends State<Example1> {
  final List<String> imagesPath = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
  ];

  int _crossAxisCount = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: fontFamily,
          textTheme: const TextTheme(
              bodyLarge:
                  TextStyle(fontWeight: FontWeight.w700, color: Colors.red))),
      home: SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  print('width ${constraints.maxWidth}');
                  print('height ${constraints.maxHeight}');

                  return GridView.builder(
                    itemCount: imagesPath.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: _calculateSizePage(constraints)),
                    itemBuilder: (context, index) {
                      return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.red)),
                            margin: const EdgeInsets.all(15),
                            child: Image.asset(
                              imagesPath[index],
                              fit: BoxFit.cover,
                            ),
                          ));
                    },
                  );
                },
              ),
            ),
            const Text(
              'header of mobile at taavSystem',
              style: TextStyle(fontFamily: fontFamily),
            ),

            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(15),
            //     color: _generateRandomColor(),
            //   ),
            //   child: InkWell(
            //       onTap: () {
            //         setState(() => _generateRandomColor());
            //       },
            //       child: Center(child: Container(child: Text('click me')))),
            // ),
          ],
        )),
      ),
    );
  }

  int _calculateSizePage(BoxConstraints constraints) {
    if (constraints.minWidth >= 0 && constraints.maxWidth <= 400) {
      return 3;
    }
    if (constraints.maxWidth <= 750) {
      return 4;
    }
    return 5;
  }

  Color _generateRandomColor() {
    const List<Color> colors = Colors.primaries;
    final int random = Random().nextInt(colors.length);
    return colors[random];
  }
}
