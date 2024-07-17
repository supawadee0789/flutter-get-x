import 'package:get_app/apis/providers/api_provider.dart';
import 'package:get_app/models/product/product_model.dart';
import 'package:get_app/modules/home/repositories/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  final ApiProvider api;
  HomeRepositoryImpl(this.api);

  @override
  Future<List<ProductModel>> getProduct() async {
    final res = await api.getProducts();
    if (res.isSuccess) {
      return ProductModel.fromJsonList(res.data);
    }

    return List.empty();
  }
}
