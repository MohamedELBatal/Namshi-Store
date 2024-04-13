import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/failuers.dart';
import 'package:e_commerce/features/signUp/data/models/SignUpModel.dart';
import 'package:e_commerce/features/signUp/domain/entities/SignUpRequestModel.dart';
import 'package:e_commerce/features/signUp/domain/repositories/signup_repo.dart';

class SignUpUseCase {
  SignUpRepo repo;

  SignUpUseCase(this.repo);

  Future<Either<Failures, SignUpModel>> call(SignUpRequestModel requestModel) =>
      repo.signUp(requestModel);
}
