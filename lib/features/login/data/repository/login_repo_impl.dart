import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/failuers.dart';
import 'package:e_commerce/features/login/data/data_sources/remote/login_ds.dart';
import 'package:e_commerce/features/login/domain/entity/ResponseEntity.dart';
import 'package:e_commerce/features/login/domain/repository/login_repo.dart';

class LoginRepoImpl implements LoginRepo {
  LoginRemoteDS loginRemoteDS;

  LoginRepoImpl(this.loginRemoteDS);

  @override
  Future<Either<Failures, ResponseEntity>> login(
      String email, String password) async {
    try {
      var userModel = await loginRemoteDS.login(email, password);
      return Right(userModel);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
