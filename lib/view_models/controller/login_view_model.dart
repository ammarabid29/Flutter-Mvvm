import 'package:flutter/material.dart';
import 'package:flutter_mvvm/repository/login_repository/login_repository.dart';
import 'package:flutter_mvvm/utils/utils.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;

    Map data = {
      "email": emailController.value.text,
      "password": passwordController.value.text,
    };

    _api.loginApi(data).then((value) {
      loading.value = false;
      if (value["error"] == "user not found") {
        Utils.snackBar("Login", value["error"]);
      } else {
        Utils.snackBar("Login", "Login successfully");
      }
    }).onError((error, stackTree) {
      loading.value = false;
      Utils.snackBar("Error", error.toString());
    });
  }
}
