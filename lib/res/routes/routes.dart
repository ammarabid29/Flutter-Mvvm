import 'package:flutter_mvvm/res/routes/routes_name.dart';
import 'package:flutter_mvvm/view/home/home_view.dart';
import 'package:flutter_mvvm/view/login/login_view.dart';
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
          name: RoutesName.loginView,
          page: () => const LoginView(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.homeView,
          page: () => const HomeView(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 250),
        ),
      ];
}
