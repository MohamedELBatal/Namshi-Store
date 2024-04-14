import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/failuers.dart';
import 'package:e_commerce/features/home/data/models/BrandModel.dart';
import 'package:e_commerce/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';


@injectable
class GetBrandsUseCase {
  HomeRepo repo;

  GetBrandsUseCase(this.repo);

  Future<Either<Failures, BrandModel>> call() => repo.getBrands();
}
