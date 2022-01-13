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
}
