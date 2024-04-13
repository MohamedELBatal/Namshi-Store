import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/failuers.dart';
import 'package:e_commerce/features/signUp/data/models/SignUpModel.dart';
import 'package:e_commerce/features/signUp/domain/entities/SignUpRequestModel.dart';

abstract class SignUpRepo {
  Future<Either<Failures, SignUpModel>> signUp(SignUpRequestModel requestModel);
}
