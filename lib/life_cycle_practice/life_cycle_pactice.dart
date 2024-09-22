import 'package:flutter/material.dart';

void main() => runApp(const MyHomePage                   ());

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  bool showChildWidget = true;
  final int _value = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Deactivate Example"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // if (showChildWidget)
            //   ChildWidget(
            //     value: _value,
            //   ),
            Expanded(child: ChildWidget(value: _value)),
          ],
        ),
      ),
    );
  }
}

class ChildWidget extends StatefulWidget {
  const ChildWidget({super.key, required this.value});

  final int value;

  @override
  _ChildWidgetState createState() => _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {
  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  void initState() {
    print('init state');
    super.initState();
  }

  @override
  void deactivate() {
    super.deactivate();
    print("ChildWidget is deactivated.");
  }

  @override
  void didChangeDependencies() {
    print('did Change dependencies is running');
    super.didChangeDependencies();
  }

  TextDirection _value = TextDirection.ltr;

  @override
  Widget build(BuildContext context) {
    print('build');
    return Directionality(
      textDirection: _value,
      child: ColoredBox(
        color: Colors.red,
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              width: 200,
              height: 200,
              child: Center(
                child: Text(
                  "$_value",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () => setState(() => _value = TextDirection.rtl),
                child: const Text('Change')),
          ],
        ),
      ),
    );
  }
}
