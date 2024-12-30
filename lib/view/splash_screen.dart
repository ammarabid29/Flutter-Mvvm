import 'package:flutter/material.dart';
import 'package:flutter_mvvm/res/components/round_button_widget.dart';
import 'package:flutter_mvvm/utils/utils.dart';
import 'package:get/get_utils/get_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("email_hint".tr),
      ),
      // body: InternetExceptionWidget(
      //   onPress: () {},
      // ),
      body: Center(
        child: Column(
          children: [
            RoundButtonWidget(
              title: "Login",
              onPress: () {},
              width: 200,
              loading: true,
            ),
            const SizedBox(height: 30),
            RoundButtonWidget(
              title: "Signup",
              onPress: () {},
              width: 140,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Utils.toastMessageCenter("Ammar");
        },
      ),
    );
  }
}
