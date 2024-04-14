part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
 @Default(RequestStatus.init)RequestStatus getBrandStatus,
 @Default(RequestStatus.init)RequestStatus getProductsStatus,
 @Default(RequestStatus.init)RequestStatus getCategoriesStatus,
    BrandModel? brandModel,
   @Default(0) int currentIndex,
    CategoriesModel? categoriesModel,
    ProductsModel? productsModel,
    Failures? brandFailure,
    Failures? categoriesFailure,
    Failures? productsFailure,
}) = _HomeState;
}
