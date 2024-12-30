import 'package:flutter/material.dart';
import 'package:flutter_mvvm/res/components/round_button_widget.dart';
import 'package:flutter_mvvm/utils/utils.dart';
import 'package:flutter_mvvm/view_models/controller/login_view_model.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginVM = Get.put(LoginViewModel());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("login".tr),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: loginVM.emailController.value,
                    focusNode: loginVM.emailFocusNode.value,
                    decoration: InputDecoration(
                        hintText: "email_hint".tr,
                        border: const OutlineInputBorder()),
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar("Email", "Enter email");
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) {
                      Utils.feildFocusMode(
                          context,
                          loginVM.emailFocusNode.value,
                          loginVM.passwordFocusNode.value);
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: loginVM.passwordController.value,
                    focusNode: loginVM.passwordFocusNode.value,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "password_hint".tr,
                        border: const OutlineInputBorder()),
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar("Password", "Enter password");
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            RoundButtonWidget(
              title: "login".tr,
              onPress: () {
                if (_formKey.currentState!.validate()) {}
              },
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
