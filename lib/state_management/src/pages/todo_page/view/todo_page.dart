import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/todo_page_controller.dart';

class TodoPage extends GetView<ToDoPageController> {
  const TodoPage({super.key}) ;

  /*
  * {
    Get.put(ToDoPageController());
    _controller = Get.find<ToDoPageController>();
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('plus button => ${controller.count.value}')),
            ElevatedButton(
                onPressed: () => controller.increamentCount(),
                child: const Icon(Icons.add)),
          ],
        ),
      );
}
