import 'package:bloc/bloc.dart';
import 'package:e_commerce/core/enums/enums.dart';
import 'package:e_commerce/core/errors/failuers.dart';
import 'package:e_commerce/features/home/data/models/BrandModel.dart';
import 'package:e_commerce/features/home/data/models/CategoriesModel.dart';
import 'package:e_commerce/features/home/data/models/ProductsModel.dart';
import 'package:e_commerce/features/home/domain/use_cases/get_brands_use_case.dart';
import 'package:e_commerce/features/home/domain/use_cases/get_categories_use_case.dart';
import 'package:e_commerce/features/home/domain/use_cases/get_products_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetBrandsUseCase getBrandsUseCase;
  GetProductsUseCase getProductsUseCase;
  GetCategoriesUseCase getCategoriesUseCase;

  HomeBloc({required this.getBrandsUseCase,required this.getProductsUseCase, required this.getCategoriesUseCase})
      : super(const HomeState()) {
    on<GetBrandsEvent>((event, emit) async {
      emit(state.copyWith(getBrandStatus: RequestStatus.loading));

      var result = await getBrandsUseCase();
      result.fold((l) {
        emit(state.copyWith(
            getBrandStatus: RequestStatus.failure, brandFailure: l));
      }, (r) {
        emit(state.copyWith(
            getBrandStatus: RequestStatus.success, brandModel: r));
      });
    });

    on<GetCategoriesEvent>((event, emit) async {
      emit(state.copyWith(getCategoriesStatus: RequestStatus.loading));
      var result = await getCategoriesUseCase();

      result.fold((l) {
        emit(state.copyWith(
            getCategoriesStatus: RequestStatus.failure, categoriesFailure: l));
      }, (r) {
        emit(state.copyWith(
            getCategoriesStatus: RequestStatus.failure, categoriesModel: r));
      });
    });
    on<GetProductsEvent>((event, emit)async {
      emit(state.copyWith(getProductsStatus: RequestStatus.loading));
      var result = await getProductsUseCase();

      result.fold((l) {
        emit(state.copyWith(
            getProductsStatus: RequestStatus.failure,productsFailure: l));
      }, (r) {
        emit(state.copyWith(
            getCategoriesStatus: RequestStatus.failure, productsModel: r));
      });
    });
    on<ChangeNavBar>((event, emit){
      emit(state.copyWith(currentIndex: event.index));
    });
  }
}
