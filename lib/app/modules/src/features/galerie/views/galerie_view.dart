import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../common_widgets/ButtomNavBar.dart';
import '../controllers/galerie_controller.dart';

class GalerieView extends GetView<GalerieController> {
  const GalerieView({Key? key}) : super(key: key);
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
              const Padding(
                padding: EdgeInsets.only(left: 120.0),
                child: Text("Galerie"),
              ),
              const SizedBox(width: 80),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: IconButton(
                  icon: const Icon(Icons.settings, size: 30),
                  onPressed: () {
                    // Action à effectuer lors du clic sur le bouton paramètres
                  },
                ),
              ),
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
          'GalerieView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: const ButtomNavBar(),
    );
  }
}
