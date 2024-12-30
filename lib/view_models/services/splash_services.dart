import 'dart:async';

import 'package:flutter_mvvm/res/routes/routes_name.dart';
import 'package:flutter_mvvm/view_models/controller/user_preference/user_preference_view_model.dart';
import 'package:get/get.dart';

class SplashServices {
  UserPreference userPreference = UserPreference();

  void isLogin() {
    userPreference.getUser().then((value) {
      if (value.token == null || value.token!.isEmpty) {
        Timer(
          const Duration(seconds: 3),
          () => Get.toNamed(RoutesName.loginView),
        );
      } else {
        Timer(
          const Duration(seconds: 3),
          () => Get.toNamed(RoutesName.homeView),
        );
      }
    }).catchError((error) {
      print('Error fetching user: $error');
    });
  }
}
