import 'package:flutter/material.dart';
import 'package:flutter_mvvm/utils/utils.dart';
import 'package:flutter_mvvm/view_models/controller/login/login_view_model.dart';
import 'package:get/get.dart';

class PasswordInputWidget extends StatelessWidget {
  PasswordInputWidget({super.key});

  final loginVM = Get.put(LoginViewModel());
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginVM.passwordController.value,
      focusNode: loginVM.passwordFocusNode.value,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "password_hint".tr, border: const OutlineInputBorder()),
      validator: (value) {
        if (value!.isEmpty) {
          Utils.snackBar("Password", "Enter password");
        }
        return null;
      },
    );
  }
}
