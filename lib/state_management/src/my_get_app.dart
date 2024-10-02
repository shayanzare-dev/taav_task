import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/state_management/src/infrastructure/route/route_nemes.dart';
import 'package:untitled/state_management/src/infrastructure/route/route_pages.dart';

import 'pages/todo_page/view/todo_page.dart';

class MyGetXApp extends StatelessWidget {
  const MyGetXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RouteNames.todoPage,
      getPages: RoutePage.pages,
      home: const TodoPage(),
    );
  }
}
