class ToDoModel {
  String title;
  String label;
  bool isDone;

  ToDoModel(this.title, this.label, this.isDone);

  @override
  String toString() {
    return '$title and $label';
  }
}
