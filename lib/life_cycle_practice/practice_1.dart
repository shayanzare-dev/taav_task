import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    super.dispose();
    print('dispose is runnig');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MyApp oldWidget) {
    if (oldWidget != widget) {
      print('didUpdateWidget');
    }
    super.didUpdateWidget(oldWidget);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[],
      ),
    );
  }
}
