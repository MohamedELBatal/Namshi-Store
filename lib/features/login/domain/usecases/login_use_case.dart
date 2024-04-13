import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/failuers.dart';
import 'package:e_commerce/features/login/domain/entity/ResponseEntity.dart';
import 'package:e_commerce/features/login/domain/repository/login_repo.dart';

class LoginUseCase{
  LoginRepo repo ;
  LoginUseCase(this.repo);


  Future<Either<Failures, ResponseEntity>> call(String email , String password)=> repo.login(email, password);
}