import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/failuers.dart';
import 'package:e_commerce/features/home/data/models/ProductCartModel.dart';
import 'package:e_commerce/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddProductToCartUseCase {
  HomeRepo repo;

  AddProductToCartUseCase(this.repo);

  Future<Either<Failures, ProductCartModel>> call(
          {required String productId}) =>
      repo.addProductToCart(productId);
}
