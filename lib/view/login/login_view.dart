import 'package:flutter/material.dart';
import 'package:flutter_mvvm/view/login/widgets/email_input_widget.dart';
import 'package:flutter_mvvm/view/login/widgets/login_button_widget.dart';
import 'package:flutter_mvvm/view/login/widgets/password_input_widget.dart';
import 'package:flutter_mvvm/view_models/controller/login/login_view_model.dart';
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
                  EmailInputWidget(),
                  const SizedBox(height: 20),
                  PasswordInputWidget(),
                ],
              ),
            ),
            const SizedBox(height: 40),
            LoginButtonWidget(
              formKey: _formKey,
            )
          ],
        ),
      ),
    );
  }
}
