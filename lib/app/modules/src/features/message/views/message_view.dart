import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:soutenance_v1/app/modules/src/common_widgets/searchWiget.dart';

import '../../../common_widgets/ButtomNavBar.dart';
import '../controllers/message_controller.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 10, vsync: this, initialIndex: 0);
  }

  Widget build(BuildContext context) {
    return const MessageView();
  }
}

class MessageView extends GetView<MessageController> {
  const MessageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                padding: const EdgeInsets.all(47.0),
                child: Title(
                  color: Colors.white,
                  child: const Text(
                    'Messages',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.settings,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // Action à effectuer lors du clic sur le bouton paramètres
                  },
                ),
              )
            ],
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: searchWidget(),
          ),
        ),
        // bottom: const PreferredSize(
        //   preferredSize:
        //       Size.fromHeight(5.0), // Hauteur de la ligne de séparation
        //   child: Divider(
        //     height: 1.0,
        //     thickness: 0.5, // Épaisseur de la ligne de séparation
        //     color: Colors.black, // Couleur de la ligne de séparation
        //   ),
        // ),
      ),
      body: const Center(
        child: Text(
          'MessageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: const ButtomNavBar(),
    );
  }
}
