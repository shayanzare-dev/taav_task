import 'package:untitled/utils/validator.dart';

void main() {
  final Example1<String, int> example1 = Example1.creator();
  print(example1.runtimeType);
}

//  generic learning is not complete
class Example1<T extends String, E extends int> {
  final List<E?>? items;
  final T? secretPassword;

  const Example1({
    required this.secretPassword,
    required this.items,
  });

  factory Example1.creator({List<E?>? items, T? password}) {
    if (Validator.isValidPassword(password.toString())) {
      return Example1(secretPassword: password, items: items);
    }
    return const Example1(secretPassword: null, items: null);
  }
}
