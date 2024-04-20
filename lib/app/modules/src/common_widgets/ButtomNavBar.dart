import 'package:flutter/material.dart';
import 'package:soutenance_v1/app/modules/src/features/Menu/views/menu_view.dart';
import 'package:soutenance_v1/app/modules/src/features/galerie/views/galerie_view.dart';
import 'package:soutenance_v1/app/modules/src/features/message/views/message_view.dart';
import 'package:soutenance_v1/app/modules/src/features/notification/views/notification_view.dart';
import 'package:soutenance_v1/app/modules/src/features/search/views/search_view.dart';

class ButtomNavBar extends StatelessWidget {
  const ButtomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0, 20),
              blurRadius: 20)
        ],
      ),
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
    );
  }

  ////////////// bien mais je n'arrive pas à arrondir l'appbar
  // return BottomAppBar(
  //   padding: const EdgeInsets.all(12),
  //   color: Colors.transparent,
  //   elevation: 15.0,
  //   shadowColor: Colors.black,
  //   child: NavigationBar(
  //     backgroundColor: Colors.white,
  //     elevation: 5.0,
  //     destinations: [
  //       IconButton(
  //           icon: const Icon(
  //             Icons.home_outlined,
  //             color: Colors.black,
  //             size: 30,
  //           ),
  //           onPressed: () {
  //             Navigator.push(context, MaterialPageRoute(builder: (context) {
  //               return const MenuView();
  //             }));
  //           }),
  //       IconButton(
  //           icon: const Icon(
  //             Icons.search_outlined,
  //             color: Colors.black,
  //             size: 30,
  //           ),
  //           onPressed: () {
  //             Navigator.push(context, MaterialPageRoute(builder: (context) {
  //               return const SearchView();
  //             }));
  //           }),
  //       IconButton(
  //           icon: const Icon(
  //             Icons.notifications_active_outlined,
  //             color: Colors.black,
  //             size: 30,
  //           ),
  //           onPressed: () {
  //             Navigator.push(context, MaterialPageRoute(builder: (context) {
  //               return const NotificationView();
  //             }));
  //           }),
  //       IconButton(
  //           icon: const Icon(
  //             Icons.message_outlined,
  //             color: Colors.black,
  //             size: 30,
  //           ),
  //           onPressed: () {
  //             Navigator.push(context, MaterialPageRoute(builder: (context) {
  //               return const MessageView();
  //             }));
  //           }),
  //       IconButton(
  //           icon: const Icon(
  //             Icons.folder_copy_outlined,
  //             color: Colors.black,
  //             size: 30,
  //           ),
  //           onPressed: () {
  //             Navigator.push(context, MaterialPageRoute(builder: (context) {
  //               return const GalerieView();
  //             }));
  //           }),
  //     ],
  //   ),
  // );

/////Second
  // return newMethod(context);
  // Container newMethod(BuildContext context) {
  //   return Container(
  //   height: 75, // Définit une hauteur initiale
  //   constraints: const BoxConstraints(maxHeight: 7),
  //   decoration: const BoxDecoration(
  //     border: Border(
  //       top: BorderSide(
  //         color: Color.fromARGB(100, 0, 0, 0), // Couleur de la ligne
  //         width: 1.0, // Épaisseur de la ligne
  //       ),
  //     ),
  //   ),
  //   child: ButtonBar(
  //     mainAxisSize: MainAxisSize.max,
  //     alignment: MainAxisAlignment.center,
  //     buttonPadding: const EdgeInsets.all(20),
  //     children: [
  //       IconButton(
  //         icon: const Icon(Icons.home, size: 30),
  //         onPressed: () {
  //           Navigator.push(context, MaterialPageRoute(builder: (context) {
  //             return const MenuView();
  //           }));
  //           // Action à effectuer lors du clic sur le bouton de notifications
  //         },
  //       ),
  //       IconButton(
  //         icon: const Icon(Icons.search, size: 30),
  //         onPressed: () {
  //           // Action à effectuer lors du clic sur le bouton de notifications
  //           Navigator.push(context, MaterialPageRoute(builder: (context) {
  //             return const SearchView();
  //           }));
  //         },
  //       ),
  //       IconButton(
  //         icon: const Icon(
  //           Icons.notifications,
  //           size: 30,
  //         ),
  //         onPressed: () {
  //           // Action à effectuer lors du clic sur le bouton de notifications
  //           Navigator.push(context, MaterialPageRoute(builder: (context) {
  //             return const NotificationView();
  //           }));
  //         },
  //       ),
  //       IconButton(
  //         icon: const Icon(Icons.message),
  //         onPressed: () {
  //           // Action à effectuer lors du clic sur le bouton de notifications
  //           Navigator.push(context, MaterialPageRoute(builder: (context) {
  //             return const MessageView();
  //           }));
  //         },
  //       ),
  //       IconButton(
  //         icon: const Icon(Icons.perm_media),
  //         onPressed: () {
  //           // Action à effectuer lors du clic sur le bouton de notifications
  //           Navigator.push(context, MaterialPageRoute(builder: (context) {
  //             return const GalerieView();
  //           }));
  //         },
  //       ),
  //     ],
  //   ),
  // );
  // }
}

// ButtonBar buttomNavBar() {
//   return ButtonBar(
//     mainAxisSize: MainAxisSize.max,
//     alignment: MainAxisAlignment.center,
//     buttonPadding: const EdgeInsets.all(20),
//     children: [
//       IconButton(
//         icon: const Icon(Icons.home, size: 30),
//         onPressed: () {
//           // Action à effectuer lors du clic sur le bouton de notifications
//         },
//       ),
//       IconButton(
//         icon: const Icon(Icons.search, size: 30),
//         onPressed: () {
//           // Action à effectuer lors du clic sur le bouton de notifications
//           Navigator.push(context, MaterialPageRoute(builder: (context) {
//             return const SearchView();
//           }));
//         },
//       ),
//       IconButton(
//         icon: const Icon(Icons.message),
//         onPressed: () {
//           // Action à effectuer lors du clic sur le bouton de notifications
//         },
//       ),
//       IconButton(
//         icon: const Icon(Icons.perm_media),
//         onPressed: () {
//           // Action à effectuer lors du clic sur le bouton de notifications
//         },
//       ),
//       IconButton(
//         icon: const Icon(
//           Icons.notifications,
//           size: 30,
//         ),
//         onPressed: () {
//           // Action à effectuer lors du clic sur le bouton de notifications
//         },
//       ),
//     ],
//   );
// }
