

import 'package:testapp/bloc_state_management/flutter_bloc_clean_coding/data/network/network_services_api.dart';
import 'package:testapp/bloc_state_management/flutter_bloc_clean_coding/models/user/user_model.dart';
import '../../config/app_url.dart';

class LoginRepository{

  final _api = NetworkworkServicesApi();
  Future<UserModel> loginApi(dynamic data)async{
    final response = await _api.postApi(AppUrl.loginApi, data);
    return UserModel.fromJson(response);
  }
}