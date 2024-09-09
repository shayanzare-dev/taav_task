import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                // Container(
                //   height: 250,
                //   width: 250,
                //   color: Colors.green,
                // ),
                // Positioned(
                //   left: 32,
                //   child: Container(
                //     height: 150,
                //     width: 150,
                //     color: Colors.red,
                //   ),
                // ),
                // Container(
                //   height: 80,
                //   width: 80,
                //   color: Colors.yellow,
                // ),

               GridV
              ],
            ),
          ],
        ),
      ),
    );
  }
}
