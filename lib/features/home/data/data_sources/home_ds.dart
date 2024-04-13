import 'package:e_commerce/features/home/data/models/BrandModel.dart';
import 'package:e_commerce/features/home/data/models/CategoriesModel.dart';

abstract class HomeDs{
Future<BrandModel>getBrands();
Future<CategoriesModel>getCategories();
}
