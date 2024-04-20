import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:soutenance_v1/app/modules/src/common_widgets/text_button.dart';
import 'package:soutenance_v1/app/modules/src/common_widgets/secondary_button.dart';
import 'package:soutenance_v1/app/modules/src/common_widgets/primary_button.dart';
import 'package:soutenance_v1/app/modules/src/common_widgets/textfield_component.dart';
import 'package:soutenance_v1/app/modules/src/features/Menu/views/menu_view.dart';
//import 'package:soutenance_v1/app/modules/src/common_widgets/textfield_component.dart';

//import 'package:threads_lpgl/app/modules/widgets/secondary_button.dart';
//import 'package:threads_lpgl/app/modules/widgets/text_button.dart';
import 'package:soutenance_v1/app/routes/app_pages.dart';

//import '../../Menu/widgets/primary_button.dart';
//import '../../Menu/widgets/textfield_component.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
                        // const SizedBox(
                        //   height: 100,
                        // ),
                        TextFieldComponent(
                          controller: controller.emailController,
                          hintText: 'Matricule',
                          obscureText: false,
                          validator: (value) {
                            return controller.validateEmail(value!);
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // TextFieldComponent(
                        //   controller: controller.passwordController,
                        //   hintText: 'Password',
                        //   obscureText: true,
                        //   validator: (value) {
                        //     return controller.validatePassword(value!);
                        //   },
                        // ),
                        // Align(
                        //   alignment: Alignment.centerRight,
                        //   child: CustomTextButton(
                        //     textButton: 'Mot de passe oublié',
                        //     isLoading: false,
                        //     onPressed: () {
                        //       Get.toNamed(Routes.FORGOT_PASSWORD);
                        //     },
                        //   ),
                        // ),
                        const SizedBox(
                          height: 20,
                        ),
                        PrimaryButton(
                          textButton: 'Se connecter',
                          isLoading: controller.isSubmit.value,
                          onPressed: () {
                            // controller.login();
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const MenuView();
                            }));
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SecondaryButton(
                          textButton: "S'inscrire",
                          isLoading: false,
                          onPressed: () {
                            Get.toNamed(Routes.SIGNUP);
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
