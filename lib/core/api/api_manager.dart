import 'package:dio/dio.dart';
import 'package:e_commerce/core/utils/constants.dart';

class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio();
  }



  Future<Response>getData(String endPoint,{Map<String, dynamic>? param}){
   return dio.get(Constants.baseUrl+endPoint,queryParameters:param );
  }


  Future<Response>postData(String endPoint,{Map<String, dynamic>? body}){
    return dio.post(Constants.baseUrl+endPoint,data :body );
  }

}
