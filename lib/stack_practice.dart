import 'package:flutter/material.dart';

void main() => runApp(const MyAppStack());

class MyAppStack extends StatefulWidget {
  const MyAppStack({super.key});

  @override
  State<MyAppStack> createState() => _MyAppStackState();
}

class _MyAppStackState extends State<MyAppStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: 250,
                color: Colors.green,
              ),
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
              // GridView.builder(
              //   gridDelegate:
              //   SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent:),
              //   itemBuilder: (context, index) => ,),
            ],
            ),
          ],
        ),
    );
  }
}
