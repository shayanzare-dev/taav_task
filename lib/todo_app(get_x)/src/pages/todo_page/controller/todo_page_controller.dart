import 'package:get/get.dart';
import 'package:untitled/state_management/src/pages/todo_page/models/todo_model.dart';

class TodoPageController extends GetxController{
  Rx<ToDoModel> a = ToDoModel('title', 'label', false).obs;
  int countTitle = 0;
//  RxList<int> f = []<RxList>.obs;
}