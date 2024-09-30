import 'package:get/get.dart';
import 'package:untitled/state_management/src/pages/todo_page/controller/todo_page_controller.dart';

class ToDoPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ToDoPageController());
  }
}
