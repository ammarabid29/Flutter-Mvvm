import 'package:flutter/material.dart';
import 'package:flutter_mvvm/data/response/status.dart';
import 'package:flutter_mvvm/res/components/general_exception_widget.dart';
import 'package:flutter_mvvm/res/components/internet_exception_widget.dart';

import 'package:flutter_mvvm/res/routes/routes_name.dart';
import 'package:flutter_mvvm/view_models/controller/home/home_view_model.dart';
import 'package:flutter_mvvm/view_models/controller/user_preference/user_preference_view_model.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  UserPreference userPreference = UserPreference();

  final homeVM = Get.put(HomeViewModel());

  @override
  void initState() {
    super.initState();
    homeVM.usersListApi();
  }

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
      body: Obx(() {
        switch (homeVM.rxRequestStatus.value) {
          case Status.LOADING:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case Status.ERROR:
            if (homeVM.error.value == "No internet") {
              return InternetExceptionWidget(onPress: () {
                homeVM.refreshUsersListApi();
              });
            } else {
              return GeneralExceptionWidget(onPress: () {
                homeVM.refreshUsersListApi();
              });
            }
          case Status.COMPLETED:
            return ListView.builder(
              itemCount: homeVM.usersList.value.data!.length,
              itemBuilder: (ctx, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        homeVM.usersList.value.data![index].avatar.toString(),
                      ),
                    ),
                    title: Text(
                      homeVM.usersList.value.data![index].firstName.toString(),
                    ),
                    subtitle: Text(
                      homeVM.usersList.value.data![index].email.toString(),
                    ),
                  ),
                );
              },
            );
        }
      }),
    );
  }
}
