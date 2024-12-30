import 'dart:async';

import 'package:flutter_mvvm/res/routes/routes_name.dart';
import 'package:get/get.dart';

class SplashServices {
  void isLogin() {
    Timer(
      const Duration(seconds: 3),
      () => Get.toNamed(
        RoutesName.loginView,
      ),
    );
  }
}
