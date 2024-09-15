class Validator {
  static const String emailCheckValidate =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";

  static bool isValidEmail(String email) {
    RegExp regExp = RegExp(emailCheckValidate);
    return regExp.hasMatch(email);
  }

  static bool isValidName(String name) {
    final nameRegExp =
        RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(name);
  }

  static bool isValidPassword(String password) {
    final passwordRegExp = RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
    return passwordRegExp.hasMatch(password);
  }

  static bool isNotNull(dynamic value) {
    return value != null;
  }


  static bool isValidPhone(String phone) {
    final phoneRegExp = RegExp(r"^\+?0[0-9]{10}$");
    return phoneRegExp.hasMatch(phone);
  }
}
