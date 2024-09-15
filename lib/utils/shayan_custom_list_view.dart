import 'package:flutter/material.dart';
import 'package:untitled/first_practice/models/user_model.dart';

class ShayanCustomListView extends StatelessWidget {
  const ShayanCustomListView({
    super.key,
    required this.userModels,
  });

  final List<UserModel> userModels;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Full name : ${userModels[index].fullName}'),
                Text('Gmail : ${userModels[index].gmail}'),
              ],
            ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: userModels.length);
  }
}
