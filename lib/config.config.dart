// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/api_manager.dart' as _i3;
import 'features/home/data/data_sources/home_ds.dart' as _i4;
import 'features/home/data/data_sources/home_ds_impl.dart' as _i5;
import 'features/home/data/repositories/home_repo_impl.dart' as _i7;
import 'features/home/domain/repositories/home_repo.dart' as _i6;
import 'features/home/domain/use_cases/add_product_to_cart.dart' as _i8;
import 'features/home/domain/use_cases/get_brands_use_case.dart' as _i9;
import 'features/home/domain/use_cases/get_Cart_use_case.dart' as _i12;
import 'features/home/domain/use_cases/get_categories_use_case.dart' as _i10;
import 'features/home/domain/use_cases/get_products_use_case.dart' as _i11;
import 'features/home/presentation/bloc/home_bloc.dart' as _i13;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ApiManager>(() => _i3.ApiManager());
    gh.factory<_i4.HomeDs>(() => _i5.HomeDSImpl(gh<_i3.ApiManager>()));
    gh.factory<_i6.HomeRepo>(() => _i7.HomeRepoImpl(gh<_i4.HomeDs>()));
    gh.factory<_i8.AddProductToCartUseCase>(
        () => _i8.AddProductToCartUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i9.GetBrandsUseCase>(
        () => _i9.GetBrandsUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i10.GetCategoriesUseCase>(
        () => _i10.GetCategoriesUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i11.GetProductsUseCase>(
        () => _i11.GetProductsUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i12.GetCartUseCase>(
        () => _i12.GetCartUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i13.HomeBloc>(() => _i13.HomeBloc(
          getBrandsUseCase: gh<_i9.GetBrandsUseCase>(),
          addProductToCartUseCase: gh<_i8.AddProductToCartUseCase>(),
          getProductsUseCase: gh<_i11.GetProductsUseCase>(),
          getCartUseCase: gh<_i12.GetCartUseCase>(),
          getCategoriesUseCase: gh<_i10.GetCategoriesUseCase>(),
        ));
    return this;
  }
}
