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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownButton<int>(
              value: _menuValues[0],
              items: [
                DropdownMenuItem(
                  child: Text('first'),
                  value: _menuValues[0],
                ),
                DropdownMenuItem(
                  child: Text('second'),
                  value: _menuValues[1],
                ),
                DropdownMenuItem(
                  child: Text('third'),
                  value: _menuValues[2],
                ),
                DropdownMenuItem(
                  child: Text('fourth'),
                  value: _menuValues[3],
                ),
              ],
              onChanged: (value) {
                print(value);
              },
            ),
            ElevatedButton(onPressed: onPressed, child: const Text('submit')),
            Switch(
              value: isActive,
              onChanged: isActive ? (value) {} : null,
            ),
          ],
        ),
      ),
    );
  }

  void onPressed() {
    setState(() => isActive = !isActive);
  }
}
