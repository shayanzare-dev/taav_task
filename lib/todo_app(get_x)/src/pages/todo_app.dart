import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/todo_app(get_x)/src/pages/todo_page/controller/todo_page_controller.dart';
import 'package:untitled/todo_app(get_x)/src/pages/todo_page/todo_page.dart';

class TodoApp extends GetView<TodoPageController> {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(home: TodoPage());
  }
}
