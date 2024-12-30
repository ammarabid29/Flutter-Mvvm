import 'package:flutter_mvvm/data/network/network_api_services.dart';
import 'package:flutter_mvvm/models/home/user_list_model.dart';
import 'package:flutter_mvvm/res/app_url/app_url.dart';

class HomeRepository {
  final _apiService = NetworkApiServices();

  Future<UsersListModel> userListApi() async {
    dynamic response = await _apiService.getApi(AppUrl.usersListApi);
    return UsersListModel.fromJson(response);
  }
}
