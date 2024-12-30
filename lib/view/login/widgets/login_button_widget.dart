import 'package:flutter/material.dart';
import 'package:flutter_mvvm/res/components/round_button_widget.dart';
import 'package:flutter_mvvm/view_models/controller/login/login_view_model.dart';
import 'package:get/get.dart';

class LoginButtonWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  LoginButtonWidget({super.key, required this.formKey});

  final loginVM = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RoundButtonWidget(
        loading: loginVM.loading.value,
        title: "login".tr,
        onPress: () {
          if (formKey.currentState!.validate()) {
            loginVM.loginApi();
          }
        },
        width: 200,
      ),
    );
  }
}
