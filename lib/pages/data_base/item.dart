class Item {
  static int idCount = 0;
  final String name;
  final int id;

  Item({required this.name}) : id = ++idCount;
}
