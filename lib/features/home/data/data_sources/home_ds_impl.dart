import 'package:e_commerce/core/api/api_manager.dart';
import 'package:e_commerce/core/api/end_points.dart';
import 'package:e_commerce/features/home/data/data_sources/home_ds.dart';
import 'package:e_commerce/features/home/data/models/BrandModel.dart';
import 'package:e_commerce/features/home/data/models/CategoriesModel.dart';

class HomeDSImpl implements HomeDs {
  @override
  Future<BrandModel> getBrands() async {
    ApiManager apiManager = ApiManager();
    var response = await apiManager.getData(EndPoint.brands);
    BrandModel brandModel = BrandModel.fromJson(response.data);
    return brandModel;
  }

  @override
  Future<CategoriesModel> getCategories()async {
    ApiManager apiManager = ApiManager();
    var response = await apiManager.getData(EndPoint.categories);
    CategoriesModel categoriesModel = CategoriesModel.fromJson(response.data);
    return categoriesModel;
  }
}
