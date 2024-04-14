part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
 @Default(RequestStatus.init)RequestStatus getBrandStatus,
 @Default(RequestStatus.init)RequestStatus getCategoriesStatus,
    BrandModel? brandModel,
    CategoriesModel? categoriesModel,
    Failures? brandFailure,
    Failures? categoriesFailure,
}) = _HomeState;
}
