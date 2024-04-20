import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/failuers.dart';
import 'package:e_commerce/features/home/data/data_sources/home_ds.dart';
import 'package:e_commerce/features/home/data/models/BrandModel.dart';
import 'package:e_commerce/features/home/data/models/CartModel.dart';
import 'package:e_commerce/features/home/data/models/CategoriesModel.dart';
import 'package:e_commerce/features/home/data/models/ProductCartModel.dart';
import 'package:e_commerce/features/home/data/models/ProductsModel.dart';
import 'package:e_commerce/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepo)
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
  Future<Either<Failures, CategoriesModel>> getCategories() async {
    try {
      var result = await homeDs.getCategories();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, ProductsModel>> getProducts() async {
    try {
      var result = await homeDs.getProducts();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, ProductCartModel>> addProductToCart(String productId) async {
    try {
      var result = await homeDs.addProductToCart(productId);
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, CartModel>> getCart() async {
    try {
      var result = await homeDs.getCart();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
}
}