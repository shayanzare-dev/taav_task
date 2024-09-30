import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/state_management/src/pages/todo_page/commons/todo_page_binding.dart';

import '../../pages/todo_page/view/todo_page.dart';
import 'route_nemes.dart';

class RoutePage {
  static List<GetPage> pages = [
    GetPage(
        name: RouteNames.todoPage,
        page: () => TodoPage(),
        binding: ToDoPageBinding(),
        children: [
          GetPage(
            name: RouteNames.addTodo,
            page: () => const Placeholder(),
            binding: ToDoPageBinding(),
          ),
          GetPage(
            name: RouteNames.editTodo,
            page: () => const Placeholder(),
            binding: ToDoPageBinding(),
          ),
        ])
  ];
}
