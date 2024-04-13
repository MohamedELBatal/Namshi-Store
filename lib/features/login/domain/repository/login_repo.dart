import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/failuers.dart';
import 'package:e_commerce/features/login/domain/entity/ResponseEntity.dart';

abstract class LoginRepo{

 Future<Either< Failures,ResponseEntity>> login(String email,String password);

}