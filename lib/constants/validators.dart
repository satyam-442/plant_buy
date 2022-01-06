import 'package:get/get.dart';

class Validators {
  static Pattern mobilePattern = r'^(?:[+0][1-9])?[0-9]{10,12}$';
  static RegExp textOnly = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%\-]|[0-9]');

  static String? validateEmail(String value) {
    if (value.isEmpty) {
      return "Email is required";
    } else if (!GetUtils.isEmail(value)) {
      return "Invalid Email";
    }
    return null;
  }

  static String? validatePassword(String value) {
    if (value.isEmpty) {
      return "Password is required";
    } else if (value.length < 8) {
      return "Password should contain at-least 8 character";
    }
    return null;
  }

  static String? validateEmptyCheck(String value,
      {String errorMessage = "Invalid Input"}) {
    if (value.isEmpty) {
      return errorMessage;
    }
    return null;
  }

  static String? validateGrNo(String value) {
    if (value.isEmpty) {
      return "G.R No is required";
    } else if (value.length != 4) {
      return "Length should be exact four digits";
    }
  }

  static String? validateRollNumber(String value) {
    if (value.isEmpty) {
      return "Roll number is required";
    } else if (int.parse(value) <= 0) {
      return "Roll number should be greater than 0";
    }
  }

  static String? validatePhone(String value) {
    {
      if (value.isEmpty) {
        return "Phone Number is required";
      }
      if (value.contains(r'[0-9]')) {
        return "Only Numbers Allowed";
      }
      if (value.length != 10) {
        return "Invalid Number";
      }
    }
  }
}
