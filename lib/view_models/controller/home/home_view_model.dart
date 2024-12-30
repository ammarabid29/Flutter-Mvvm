import 'package:flutter_mvvm/data/response/status.dart';
import 'package:flutter_mvvm/models/home/user_list_model.dart';
import 'package:flutter_mvvm/repository/home_repository/home_repository.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final _api = HomeRepository();

  final rxRequestStatus = Status.LOADING.obs;
  final usersList = UsersListModel().obs;

  RxString error = "".obs;

  void setRxRequestStatus(Status value) => rxRequestStatus.value = value;

  void setUsersList(UsersListModel value) => usersList.value = value;

  void setError(String value) => error.value = value;

  void usersListApi() {
    _api.userListApi().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUsersList(value);
    }).onError((error, stackTree) {
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }

  void refreshUsersListApi() {
    setRxRequestStatus(Status.LOADING);
    _api.userListApi().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUsersList(value);
    }).onError((error, stackTree) {
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }
}
