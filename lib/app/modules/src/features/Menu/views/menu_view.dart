import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:soutenance_v1/app/modules/src/common_widgets/ButtomNavBar.dart';
import 'package:soutenance_v1/app/modules/src/common_widgets/NavigationDrawer.dart';
// import 'package:soutenance_v1/app/modules/src/common_widgets/NavigationDrawer.dart';

// import '../../../common_widgets/MenuDeroulant.dart';
import '../../school/views/school_view.dart';
// import '../controllers/menu_controller.dart';

class MenuView extends GetView<MenuController> {
  const MenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navigation_Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        // shadowColor: Colors.black,
        // elevation: 5.0,
        automaticallyImplyLeading: false,
        title: Builder(builder: (context) {
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: CircleAvatar(
                    backgroundImage: Image.asset(
                      'assets/images/me.jpg',
                    ).image,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  alignment: const AlignmentDirectional(15, 1),
                ),
                const SizedBox(width: 40),
                Image.asset(
                  'assets/images/logo_esgae.png',
                  width: 120,
                  height: 120,
                ),
                const SizedBox(width: 40),
                IconButton(
                  icon: const Icon(Icons.school, size: 30),
                  onPressed: () {
                    // Action à effectuer lors du clic sur le bouton paramètres
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SchoolView();
                    }));
                  },
                ),
              ],
            ),
          );
        }),
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
      // // backgroundColor: Colors.white,
      // centerTitle: true,
      // title: Builder(builder: (context) {
      //   return Center(
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         IconButton(
      //           icon: CircleAvatar(
      //             backgroundImage: Image.asset(
      //               'assets/images/me.jpg',
      //             ).image,
      //           ),
      //           onPressed: () {
      //             Scaffold.of(context).openDrawer();
      //           },
      //           alignment: const AlignmentDirectional(15, 1),
      //         ),
      //         const SizedBox(width: 40),
      //         Image.asset(
      //           'assets/images/logo_esgae.png',
      //           width: 120,
      //           height: 120,
      //         ),
      //         const SizedBox(width: 40),
      //         IconButton(
      //           icon: const Icon(Icons.school, size: 30),
      //           onPressed: () {
      //             // Action à effectuer lors du clic sur le bouton paramètres
      //             Navigator.push(context,
      //                 MaterialPageRoute(builder: (context) {
      //               return const SchoolView();
      //             }));
      //           },
      //         ),
      //       ],
      //     ),
      //   );
      // }),
      //

      body: const Center(
        child: Text(
          'MenuView ',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: const SafeArea(
        child: ButtomNavBar(),
      ),
    );
  }
}
