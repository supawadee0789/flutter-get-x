import 'package:get_app/models/product/product_model.dart';

abstract class HomeRepository {
  Future<List<ProductModel>> getProduct();
}
