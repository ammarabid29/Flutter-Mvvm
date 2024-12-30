import 'package:flutter/material.dart';

import 'package:flutter_mvvm/res/routes/routes_name.dart';
import 'package:flutter_mvvm/view_models/controller/user_preference/user_preference_view_model.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  UserPreference userPreference = UserPreference();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              userPreference.removeUser().then((value) {
                Get.toNamed(RoutesName.loginView);
              });
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
