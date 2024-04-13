import 'package:dio/dio.dart';
import 'package:e_commerce/core/api/api_manager.dart';
import 'package:e_commerce/core/api/end_points.dart';
import 'package:e_commerce/features/login/data/data_sources/remote/login_ds.dart';
import 'package:e_commerce/features/login/data/models/UserModel.dart';

class LoginRemoteDSImpl implements LoginRemoteDS {
  @override
  Future<UserModel> login(String email, String password) async {
    ApiManager apiManager = ApiManager();
    Response response = await apiManager.postData(EndPoint.login, body: {
      "email": email,
      "password": password,
    });

    UserModel userModel = UserModel.fromJson(response.data);
    return userModel;
  }
}
