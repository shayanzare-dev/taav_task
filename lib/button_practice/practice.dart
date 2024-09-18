import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isActive = false;
  final List<int> _menuValues = [85, 69, 95, 55, 75];
  double sliderValue = 30;

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: _body(context),
      );

  Widget _body(context) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
            print('on pressed');
            _showDialog(context);
          }),
          child: const Icon(Icons.add),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownButton<int>(
              value: _menuValues[0],
              items: [
                DropdownMenuItem(
                  value: _menuValues[0],
                  child: const Text('first'),
                ),
                DropdownMenuItem(
                  value: _menuValues[1],
                  child: const Text('second'),
                ),
                DropdownMenuItem(
                  value: _menuValues[2],
                  child: const Text('third'),
                ),
                DropdownMenuItem(
                  value: _menuValues[3],
                  child: const Text('fourth'),
                ),
              ],
              onChanged: (value) {
                print(value);
              },
            ),
            Slider(
                divisions: 10,
                min: 0,
                max: 100,
                value: sliderValue,
                onChanged: (value) => setState(() => sliderValue = value)),
            Text('$sliderValue'),
            ElevatedButton(onPressed: onPressed, child: const Text('submit')),
            Switch(
              value: isActive,
              onChanged: isActive ? (value) {} : null,
            ),
          ],
        ),
      );

  _showDialog(BuildContext context) {
    return showDialog(
      barrierColor: Colors.red,
      context: context,
      builder: (context) => Dialog(
        child: SizedBox(
          height: 100,
          width: 150,
          child: Container(
            decoration: const BoxDecoration(color: Colors.red),
            child: const Center(
              child: Text('one'),
            ),
          ),
        ),
      ),
    );
  }


  void onPressed() {
    setState(() => isActive = !isActive);
  }
}
