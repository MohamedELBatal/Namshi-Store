import 'package:dio/dio.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio();
  }

  Future<Response> getData(String endPoint, {Map<String, dynamic>? param, Map<String, dynamic>? header}) {
    return dio.get(Constants.baseUrl + endPoint, queryParameters: param,
    options: Options(headers: header));
  }

  Future<Response> postData(String endPoint,
      {Map<String, dynamic>? body, Map<String, dynamic>? header}) {
    return dio.post(Constants.baseUrl + endPoint,
        data: body, options: Options(headers: header));
  }
}
