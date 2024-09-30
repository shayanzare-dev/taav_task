import 'package:get/get.dart';
import 'package:untitled/state_management/src/pages/todo_page/models/todo_model.dart';

// this is for our logic project
class ToDoPageController extends GetxController {
  RxInt count = 0.obs;

  Rx<ToDoModel> todo = ToDoModel('shayan', 'zare', false).obs;

  void increamentCount() => ++count.value;

  RxList todos = <ToDoModel>[].obs;

  @override
  void onInit() {
    todos.add(ToDoModel('shayan', 'label', true));
    todos.add(ToDoModel('shayan2', 'label2', false));

    super.onInit();
  }
}
