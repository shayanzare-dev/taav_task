class UserModel {
  final String name;
  final int id;

  UserModel({required this.name, required this.id})
      : assert(name.isNotEmpty, 'name isEmpty!'),
        assert(id > -1, 'id must more than -1');
}
