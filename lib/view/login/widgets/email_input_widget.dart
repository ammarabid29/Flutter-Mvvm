import 'package:flutter/material.dart';
import 'package:flutter_mvvm/utils/utils.dart';
import 'package:flutter_mvvm/view_models/controller/login/login_view_model.dart';
import 'package:get/get.dart';

class EmailInputWidget extends StatelessWidget {
  EmailInputWidget({super.key});

  final loginVM = Get.put(LoginViewModel());
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginVM.emailController.value,
      focusNode: loginVM.emailFocusNode.value,
      decoration: InputDecoration(
          hintText: "email_hint".tr, border: const OutlineInputBorder()),
      validator: (value) {
        if (value!.isEmpty) {
          Utils.snackBar("Email", "Enter email");
        }
        return null;
      },
      onFieldSubmitted: (value) {
        Utils.feildFocusMode(context, loginVM.emailFocusNode.value,
            loginVM.passwordFocusNode.value);
      },
    );
  }
}
