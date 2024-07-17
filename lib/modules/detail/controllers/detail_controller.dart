import 'package:get/get.dart';
import 'package:get_app/models/product/product_model.dart';

class DetailController extends GetxController {
  DetailController();

  final _product = Rxn<ProductModel>(null);
  ProductModel? get product => _product.value;

  void setProduct(ProductModel? product) {
    _product.value = product;
  }
}
