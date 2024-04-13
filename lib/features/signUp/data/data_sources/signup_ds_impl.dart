import 'package:e_commerce/core/api/api_manager.dart';
import 'package:e_commerce/core/api/end_points.dart';
import 'package:e_commerce/features/signUp/data/data_sources/signup_ds.dart';
import 'package:e_commerce/features/signUp/data/models/SignUpModel.dart';
import 'package:e_commerce/features/signUp/domain/entities/SignUpRequestModel.dart';

class SignUpDsImpl implements SignUpDs{

  @override
  Future<SignUpModel> signUp(SignUpRequestModel requestModel) async{
    ApiManager apiManager= ApiManager();

    var response = await apiManager.postData(EndPoint.signUp,body: requestModel.toJson());

    SignUpModel signUpModel = SignUpModel.fromJson(response.data);
    return signUpModel;
  }

}