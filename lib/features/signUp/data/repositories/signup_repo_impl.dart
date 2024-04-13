import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/failuers.dart';
import 'package:e_commerce/features/signUp/data/data_sources/signup_ds.dart';
import 'package:e_commerce/features/signUp/data/models/SignUpModel.dart';
import 'package:e_commerce/features/signUp/domain/entities/SignUpRequestModel.dart';
import 'package:e_commerce/features/signUp/domain/repositories/signup_repo.dart';

class SignUpRepoImpl implements SignUpRepo{
  SignUpDs signUpDs;
  SignUpRepoImpl(this.signUpDs);
  @override
  Future<Either<Failures, SignUpModel>> signUp(SignUpRequestModel requestModel) async {

    try{
      var result = await signUpDs.signUp(requestModel);
      return Right(result);
    }catch(e){
      return Left(RemoteFailures(e.toString()));
    }
  }

}
