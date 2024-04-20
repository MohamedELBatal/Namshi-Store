part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
 @Default(RequestStatus.init)RequestStatus getBrandStatus,
 @Default(RequestStatus.init)RequestStatus getProductsStatus,
 @Default(RequestStatus.init)RequestStatus getCategoriesStatus,
 @Default(RequestStatus.init)RequestStatus getCartStatus,
 @Default(RequestStatus.init)RequestStatus addToCart,
    BrandModel? brandModel,
   @Default(0) int currentIndex,
   @Default(0) int cartItems,
    CategoriesModel? categoriesModel,
    ProductsModel? productsModel,
    Failures? brandFailure,
    Failures? categoriesFailure,
    Failures? productsFailure,
}) = _HomeState;
}
