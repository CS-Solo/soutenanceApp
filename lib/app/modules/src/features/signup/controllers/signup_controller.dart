import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

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

  String? validateUsername(String username) {
    if (username.isEmpty) {
      return "Please enter username";
    }
    if (username.length < 4) {
      return "Username must be at least 4 characters";
    }
    return null;
  }

  Future<void> signup() async {
    if (formKey.currentState!.validate()) {
      isSubmit.value = true;
    }
  }
}
