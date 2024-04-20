import 'package:flutter/material.dart';
import 'package:soutenance_v1/app/modules/src/features/Menu/views/menu_view.dart';
import 'package:soutenance_v1/app/modules/src/features/galerie/views/galerie_view.dart';
import 'package:soutenance_v1/app/modules/src/features/message/views/message_view.dart';
import 'package:soutenance_v1/app/modules/src/features/notification/views/notification_view.dart';
import 'package:soutenance_v1/app/modules/src/features/search/views/search_view.dart';

const Color bottomNavBgColor = Color(0xFF17203A);

class bottomNavbarAv extends StatefulWidget {
  const bottomNavbarAv({super.key});

  @override
  State<bottomNavbarAv> createState() => _bottomNavbarAvState();
}

class _bottomNavbarAvState extends State<bottomNavbarAv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 56,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
            color: bottomNavBgColor.withOpacity(0.8),
            borderRadius: BorderRadius.all(Radius.circular(24)),
            boxShadow: [
              BoxShadow(
                color: bottomNavBgColor.withOpacity(0.3),
                offset: Offset(0, 20),
                blurRadius: 20,
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: const Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MenuView();
                  }));
                }),
            IconButton(
                icon: const Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SearchView();
                  }));
                }),
            IconButton(
                icon: const Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const NotificationView();
                  }));
                }),
            IconButton(
                icon: const Icon(
                  Icons.message_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MessageView();
                  }));
                }),
            IconButton(
                icon: const Icon(
                  Icons.folder_copy_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const GalerieView();
                  }));
                }),
          ],
        ),
      ),
    );
  }
}
