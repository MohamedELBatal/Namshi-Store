import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/failuers.dart';
import 'package:e_commerce/features/home/data/models/ProductsModel.dart';
import 'package:e_commerce/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductsUseCase {
  HomeRepo repo;

  GetProductsUseCase(this.repo);

  Future<Either<Failures, ProductsModel>> call() => repo.getProducts();
}
