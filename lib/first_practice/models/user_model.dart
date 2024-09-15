import 'package:untitled/utils/validator.dart';

class UserModel {
  final String fullName;
  final String gmail;

  UserModel({required this.fullName, required this.gmail})
      : assert(fullName.isNotEmpty, 'full name must not empty'),
        assert(RegExp(Validator.emailCheckValidate).hasMatch(gmail),
            'gmail is not valid format');
}
