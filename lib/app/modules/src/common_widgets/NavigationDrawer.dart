import 'package:flutter/material.dart';
import 'package:soutenance_v1/app/modules/src/common_widgets/draweritems.dart';
import 'package:soutenance_v1/app/modules/src/features/login/views/login_view.dart';

import '../features/Menu/views/menu_view.dart';

class Navigation_Drawer extends StatelessWidget {
  const Navigation_Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 40,
              ),
              DrawerItem(
                name: 'Profil',
                icon: Icons.person,
                onPressed: () => onItemPressed(context, index: 0),
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Amies',
                  icon: Icons.people,
                  onPressed: () => onItemPressed(context, index: 1)),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Favoris',
                  icon: Icons.favorite,
                  onPressed: () => onItemPressed(context, index: 3)),
              const SizedBox(
                height: 30,
              ),
              // DrawerItem(
              //     name: 'Historique',
              //     icon: Icons.library_books_sharp,
              //     onPressed: () => onItemPressed(context, index: 2)),
              // const SizedBox(
              //   height: 30,
              // ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Setting',
                  icon: Icons.settings,
                  onPressed: () => onItemPressed(context, index: 4)),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Log out',
                  icon: Icons.logout,
                  onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginView();
                      }))),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MenuView()));
        break;
    }
  }

  Widget headerWidget() {
    const url =
        'https://media.istockphoto.com/photos/learn-to-love-yourself-first-picture-id1291208214?b=1&k=20&m=1291208214&s=170667a&w=0&h=sAq9SonSuefj3d4WKy4KzJvUiLERXge9VgZO-oqKUOo=';
    return const Row(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(url),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mogas Jonathan',
              style: TextStyle(fontSize: 14, color: Colors.white),
              overflow: TextOverflow.ellipsis, // Ajout de l'ellipsis
            ),
            SizedBox(
              height: 10,
            ),
            Text('gojomogas@email.com',
                style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text('Filiere : Informatique',
                style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text('Classe : LPGL',
                style: TextStyle(fontSize: 14, color: Colors.white)),
          ],
        )
      ],
    );
  }
}
