import 'package:flutter/material.dart';
import 'package:untitled/pages/home/widgets/new_product.dart';
import 'package:untitled/pages/home/widgets/people.dart';

import 'widgets/header.dart';
import 'widgets/update_new_version.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: _body(),
      );

  Widget _body() => SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Header(),
            const SizedBox(height: 15),
            const UpdateNewVersion(),
            const SizedBox(height: 15),
            const SizedBox(height: 100, child: NewProduct()),
            const SizedBox(height: 15),
            People(),
          ],
        ),
      );
}