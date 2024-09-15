import 'package:flutter/material.dart';
import 'package:untitled/first_practice/form_page/form_page.dart';
import 'package:untitled/first_practice/models/user_model.dart';

import '../../utils/shayan_custom_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UserModel> userModels = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: _appBar(),
      body: _body(context),
    );
  }

  AppBar _appBar() => AppBar();

  Widget _body(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: userModels.isNotEmpty
                ? ShayanCustomListView(
                    userModels: userModels,
                  )
                : const Center(child: Text('list is empty')),
          ),
          ElevatedButton(
              onPressed: onRouteTapButton,
              child: const Text('go to form page')),
          const SizedBox(height: 30),
        ],
      );

  Future<void> onRouteTapButton() async {
    final UserModel? result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => const FormPage()));
    if (result != null) {
      setState(() => userModels.add(result));
    }
  }
}
