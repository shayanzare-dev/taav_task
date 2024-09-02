import 'package:flutter/material.dart';
import 'package:untitled/pages/home/widgets/new_product.dart';
import 'package:untitled/pages/home/widgets/people.dart';

import 'widgets/header.dart';
import 'widgets/update_new_version.dart';

class HomePage extends StatelessWidget {
  final void Function() changeLocale;

  const HomePage({super.key, required this.changeLocale});

  @override
  Widget build(BuildContext context) => Scaffold(body: _body());

  Widget _body() => SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                const Header(),
                IconButton(
                    onPressed: changeLocale,
                    icon: const Icon(
                      Icons.translate,
                      color: Colors.white,
                    )),
              ],
            ),
            const SizedBox(height: 15),
            const UpdateNewVersion(),
            const SizedBox(height: 15),
            const SizedBox(height: 100, child: NewProduct()),
            const SizedBox(height: 15),
            const People(),
          ],
        ),
      );
}