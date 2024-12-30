import 'package:flutter/material.dart';
import 'package:flutter_mvvm/res/fonts/app_fonts.dart';
import 'package:flutter_mvvm/res/getx_localization/languages.dart';
import 'package:flutter_mvvm/res/routes/routes.dart';
import 'package:flutter_mvvm/view/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Languages(),
      locale: const Locale("en", "US"),
      fallbackLocale: const Locale("en", "US"),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: AppFonts.robotoRegular,
      ),
      getPages: AppRoutes.appRoutes(),
      home: const SplashScreen(),
    );
  }
}
