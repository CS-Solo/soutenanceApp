import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../common_widgets/ButtomNavBar.dart';
import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: IconButton(
                  icon: CircleAvatar(
                    backgroundImage: Image.asset(
                      'assets/images/me.jpg',
                    ).image,
                  ),
                  onPressed: () {},
                  alignment: const AlignmentDirectional(15, 1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Title(
                  color: Colors.white,
                  child: const Text(
                    'Notifications',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: IconButton(
                  icon: const Icon(Icons.settings, size: 30),
                  onPressed: () {
                    // Action à effectuer lors du clic sur le bouton paramètres
                  },
                ),
              )
            ],
          ),
        ),
        bottom: const PreferredSize(
          preferredSize:
              Size.fromHeight(5.0), // Hauteur de la ligne de séparation
          child: Divider(
            height: 1.0,
            thickness: 0.5, // Épaisseur de la ligne de séparation
            color: Colors.black, // Couleur de la ligne de séparation
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'NotificationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: const ButtomNavBar(),
    );
  }
}
