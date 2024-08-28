import 'package:flutter/material.dart';
import 'package:untitled/class_practice/header.dart';
import 'package:untitled/class_practice/newProducts.dart';
import 'package:untitled/class_practice/people.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _body(),
      ),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Header(),
          const SizedBox(
            height: 15,
          ),
          const NewProducts(),
          const SizedBox(
            height: 15,
          ),
          People(),
        ],
      ),
    );
  }
}
