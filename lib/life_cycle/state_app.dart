import 'package:flutter/material.dart';
import 'package:untitled/list_data_app/pages/home/widgets/list_view_page.dart';

class StateApp extends StatefulWidget {
  const StateApp({super.key});

  @override
  State<StateApp> createState() => _StateAppState();
}

class _StateAppState extends State<StateApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('helloo');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose is working now...');
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SizedBox(
            height: 200, child: ListViewPage(primaryColor: Colors.green)),
      ),
    );
  }
}
