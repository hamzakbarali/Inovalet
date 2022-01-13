import "package:flutter/material.dart";
import "../data/data_barrel.dart";
import "../models/models_barrel.dart";
import 'package:collection/collection.dart';

void createUser(String name, String email, String password, String phoneNum,
    String carNum, String route, BuildContext context) {
  if (validateName(name) &&
      validateEmail(email) &&
      validatePassword(password) &&
      validatePhone(phoneNum) &&
      validateCar(carNum) &&
      validateLogin(email, password)) {
    users.add(User(
        name: name,
        email: email,
        password: password,
        phoneNum: phoneNum,
        carNum: carNum));
    Navigator.pushReplacementNamed(context, route);
  }
}

bool validateLogin(String email, String password) {
  return users.firstWhereOrNull((user) {
        return user.email == email && user.password == password;
      }) ==
      null;
}

void login(String email, String password, String route, BuildContext context) {
  if (!validateLogin(email, password)) {
    User? user = users.firstWhereOrNull((element) {
      return element.email == email && element.password == password
    });
    if(user != null) {
      Navigator.pushReplacementNamed(context, route, arguments: user.id);
    }
  }
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
