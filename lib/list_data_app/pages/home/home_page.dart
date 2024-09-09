import 'package:flutter/material.dart';

import 'widgets/header.dart';
import 'widgets/new_product.dart';
import 'widgets/people.dart';
import 'widgets/update_new_version.dart';

class HomePage extends StatelessWidget {
  final void Function() changeLocale;

  const HomePage({super.key, required this.changeLocale});

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: const Drawer(
        width: 50,
        elevation: 3,
      ),
      body: _body());

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
