import 'package:e_commerce/core/api/api_manager.dart';
import 'package:e_commerce/core/api/end_points.dart';
import 'package:e_commerce/core/cache/shared_pref.dart';
import 'package:e_commerce/features/home/data/data_sources/home_ds.dart';
import 'package:e_commerce/features/home/data/models/BrandModel.dart';
import 'package:e_commerce/features/home/data/models/CartModel.dart';
import 'package:e_commerce/features/home/data/models/CategoriesModel.dart';
import 'package:e_commerce/features/home/data/models/ProductCartModel.dart';
import 'package:e_commerce/features/home/data/models/ProductsModel.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeDs)
class HomeDSImpl implements HomeDs {
  ApiManager apiManager;

  HomeDSImpl(this.apiManager);

  @override
  Future<BrandModel> getBrands() async {
    var response = await apiManager.getData(EndPoint.brands);
    BrandModel brandModel = BrandModel.fromJson(response.data);
    return brandModel;
  }

  @override
  Future<CategoriesModel> getCategories() async {
    var response = await apiManager.getData(EndPoint.categories);
    CategoriesModel categoriesModel = CategoriesModel.fromJson(response.data);
    return categoriesModel;
  }

  @override
  Future<ProductsModel> getProducts() async {
    var response = await apiManager.getData(EndPoint.products);

    ProductsModel productsModel = ProductsModel.fromJson(response.data);
    return productsModel;
  }

  @override
  Future<ProductCartModel> addProductToCart(String productId) async {
    var token = CacheHelper.getToken("token");

    var response = await apiManager.postData(EndPoint.addToCart,
        body: {"productId": productId}, header: {"token": token});
    ProductCartModel model = ProductCartModel.fromJson(response.data);
    return model;
  }

  @override
  Future<CartModel> getCart() async{
    var token = CacheHelper.getToken("token");

  var response = await apiManager.getData(EndPoint.addToCart, header: {"token": token});
    CartModel model = CartModel.fromJson(response.data);
  return model;
  }
}
