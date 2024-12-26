import 'package:flutter_mvvm/res/routes/routes_name.dart';
import 'package:flutter_mvvm/view/login_screen.dart';
import 'package:flutter_mvvm/view/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => const SplashScreen(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.loginScreen,
          page: () => const LoginScreen(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 250),
        ),
      ];
}
