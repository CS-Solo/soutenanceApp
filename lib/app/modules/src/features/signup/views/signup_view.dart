import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soutenance_v1/app/routes/app_pages.dart';

import 'package:soutenance_v1/app/modules/src/common_widgets/secondary_button.dart';
import 'package:soutenance_v1/app/modules/src/common_widgets/primary_button.dart';
import 'package:soutenance_v1/app/modules/src/common_widgets/textfield_component.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: controller.formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        Center(
                          child: Image.asset(
                            'assets/images/logo_esgae.png',
                            width: 200,
                            height: 200,
                          ),
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        TextFieldComponent(
                          controller: controller.usernameController,
                          hintText: 'Matricule',
                          obscureText: false,
                          validator: (value) {
                            return controller.validateUsername(value!);
                          },
                        ),
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        // TextFieldComponent(
                        //   controller: controller.emailController,
                        //   hintText: 'Email',
                        //   obscureText: false,
                        //   validator: (value) {
                        //     return controller.validateEmail(value!);
                        //   },
                        // ),
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        // TextFieldComponent(
                        //   controller: controller.passwordController,
                        //   hintText: 'Password',
                        //   obscureText: true,
                        //   validator: (value) {
                        //     return controller.validatePassword(value!);
                        //   },
                        // ),
                        const SizedBox(
                          height: 20,
                        ),
                        PrimaryButton(
                          textButton: "S'inscrire",
                          isLoading: controller.isSubmit.value,
                          onPressed: () {
                            controller.signup();
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SecondaryButton(
                          textButton: "Se connecter",
                          isLoading: false,
                          onPressed: () {
                            Get.toNamed(Routes.LOGIN);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Mj & Bk"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
