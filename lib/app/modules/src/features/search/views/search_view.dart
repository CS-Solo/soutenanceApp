import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../common_widgets/ButtomNavBar.dart';

import '../../../common_widgets/searchWiget.dart';

// import './controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: searchWidget(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: IconButton(
              icon: const Icon(
                Icons.settings,
                size: 30,
                color: Colors.black,
              ),
              onPressed: () {
                // Action à effectuer lors du clic sur le bouton paramètres
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return const SchoolView();
                // }));
              },
            ),
          ),
        ],
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
      bottomNavigationBar: const ButtomNavBar(),
    );
  }
}
