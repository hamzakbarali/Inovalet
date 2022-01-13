import 'package:uuid/uuid.dart';

class User {
  late final String id;
  late final String name;
  late final String email;
  late final String password;
  late final String phoneNum;
  late final String carNum;

  User(
      {required this.name,
      required this.email,
      required this.password,
      required this.phoneNum,
      required this.carNum}) {
    id = const Uuid().v4();
  }

  bool validateName(String name) {
    if (name.length < 4) {
      return false;
    }
    return true;
  }

  bool validateEmail(String email) {
    if (email.length < 8) {
      return false;
    } else if (!email.contains('@')) {
      return false;
    } else if (!email.contains(".com")) {
      return false;
    } else {
      return true;
    }
  }

  bool validatePassword(String password) {
    if (password.length < 6) {
      return false;
    }
    return true;
  }

  bool validatePhone(String num) {
    if (num.length < 11) {
      return false;
    }
    return true;
  }

  bool validateCar(String num) {
    if (num.length < 6) {
      return false;
    }
    return true;
  }

  bool validateLogin(String email, String password) {
    return true;
  }
}
