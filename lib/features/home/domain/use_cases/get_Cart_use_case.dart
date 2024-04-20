import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/failuers.dart';
import 'package:e_commerce/features/home/data/models/CartModel.dart';
import 'package:e_commerce/features/home/data/models/ProductCartModel.dart';
import 'package:e_commerce/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCartUseCase {
  HomeRepo repo;

  GetCartUseCase(this.repo);

  Future<Either<Failures, CartModel>> call() =>
      repo.getCart();
}
