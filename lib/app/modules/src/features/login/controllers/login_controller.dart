import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  var isSubmit = false.obs;

  //verify email address
  String? validateEmail(String email) {
    if (email.isEmpty) {
      return "Please enter email";
    }
    if (!GetUtils.isEmail(email)) {
      return "Please enter valid email";
    }
    return null;
  }

  //verify password
  String? validatePassword(String password) {
    if (password.isEmpty) {
      return "Please enter password";
    }
    if (password.length < 6) {
      return "Password must be at least 6 characters";
    }
    return null;
  }

  Future<void> login() async {
    if (formKey.currentState!.validate()) {
      isSubmit.value = true;
    }
  }
}
