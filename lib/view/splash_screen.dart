import 'package:flutter/material.dart';
import 'package:flutter_mvvm/res/assets/image_assets.dart';
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
      body: Image.asset(
        ImageAssets.splashScreen,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Utils.toastMessageCenter("Ammar");
        },
      ),
    );
  }
}
