import 'package:e_commerce/features/signUp/data/models/SignUpModel.dart';
import 'package:e_commerce/features/signUp/domain/entities/SignUpRequestModel.dart';

abstract class SignUpDs{

Future<SignUpModel>  signUp(SignUpRequestModel requestModel);

}