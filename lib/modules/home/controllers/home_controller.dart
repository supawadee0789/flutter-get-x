import 'package:get/get.dart';
import 'package:get_app/models/product/product_model.dart';
import 'package:get_app/modules/detail/controllers/detail_controller.dart';
import 'package:get_app/modules/home/repositories/home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository repository;
  HomeController(this.repository);

  DetailController detailController = Get.find();

  final RxList<ProductModel> _products = <ProductModel>[].obs;
  List<ProductModel> get products => _products;

  final RxBool _isLoadingProduct = false.obs;
  bool get isLoadingProduct => _isLoadingProduct.value;

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  Future<void> getProducts() async {
    _isLoadingProduct.value = true;
    _products.value = await repository.getProduct();
    _isLoadingProduct.value = false;
  }

  void setSelectedProduct(ProductModel product) {
    detailController.setProduct(product);
  }
}
