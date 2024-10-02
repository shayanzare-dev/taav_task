class TodoModel {
  final int id;
  final String title;
  final bool isDone;

  TodoModel({required this.id, required this.title, required this.isDone})
      : assert(title.isNotEmpty, 'title isEmpty!'),
        assert(id > -1, 'id must more than -1');

  TodoModel copyWith({int? id, String? title, bool? isDone}) {
    return TodoModel(
        id: id ?? this.id,
        title: title ?? this.title,
        isDone: isDone ?? this.isDone);
  }
}
