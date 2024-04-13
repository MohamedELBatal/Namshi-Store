import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/failuers.dart';
import 'package:e_commerce/features/home/data/models/CategoriesModel.dart';
import 'package:e_commerce/features/home/domain/repositories/home_repo.dart';

class GetCategoriesUseCase {
  HomeRepo repo;

  GetCategoriesUseCase(this.repo);

  Future<Either<Failures, CategoriesModel>> call() => repo.getCategories();
}
