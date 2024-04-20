import 'package:get/get.dart';

import '../modules/src/features/school/bindings/school_binding.dart';
import '../modules/src/features/school/views/school_view.dart';

import '../modules/src/features/Menu/bindings/menu_binding.dart';
import '../modules/src/features/Menu/views/menu_view.dart';

import '../modules/src/features/galerie/bindings/galerie_binding.dart';
import '../modules/src/features/galerie/views/galerie_view.dart';

import '../modules/src/features/message/bindings/message_binding.dart';
import '../modules/src/features/message/views/message_view.dart';

import '../modules/src/features/notification/bindings/notification_binding.dart';
import '../modules/src/features/notification/views/notification_view.dart';

import '../modules/src/features/search/bindings/search_binding.dart';
import '../modules/src/features/search/views/search_view.dart';

import '../modules/src/features/splash/bindings/Splash_binding.dart';
import '../modules/src/features/splash/views/splash_view.dart';

import '../modules/src/features/login/bindings/login_binding.dart';
import '../modules/src/features/login/views/login_view.dart';

import '../modules/src/features/signup/bindings/signup_binding.dart';
import '../modules/src/features/signup/views/signup_view.dart';

// import '../modules/home/bindings/home_binding.dart';
// import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.MENU,
      page: () => const MenuView(),
      binding: MenuBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => const SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGE,
      page: () => const MessageView(),
      binding: MessageBinding(),
    ),
    GetPage(
      name: _Paths.GALERIE,
      page: () => const GalerieView(),
      binding: GalerieBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.SCHOOL,
      page: () => const SchoolView(),
      binding: SchoolBinding(),
    ),
  ];
}
