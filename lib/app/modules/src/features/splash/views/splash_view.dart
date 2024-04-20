import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller.checkUserSession();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/images/logo_esgae.png',
                width: 200,
                height: 200,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(40),
            child: const Column(
              children: [
                CircularProgressIndicator(),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'by',
                  ),
                ),
                Center(child: Text("Mj & Bk")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
