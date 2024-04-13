import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/failuers.dart';
import 'package:e_commerce/features/home/data/data_sources/home_ds.dart';
import 'package:e_commerce/features/home/data/models/BrandModel.dart';
import 'package:e_commerce/features/home/data/models/CategoriesModel.dart';
import 'package:e_commerce/features/home/domain/repositories/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  HomeDs homeDs;

  HomeRepoImpl(this.homeDs);

  @override
  Future<Either<Failures, BrandModel>> getBrands() async {
    try {
      var result = await homeDs.getBrands();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, CategoriesModel>> getCategories() async{
    try {
      var result = await homeDs.getCategories();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
