import 'package:get/get.dart';
import 'package:get_app/models/product/cart_item_model.dart';
import 'package:get_app/models/product/product_model.dart';
import 'package:get_app/modules/cart/controllers/cart_controller.dart';

class DetailController extends GetxController {
  CartController cartController = Get.find();
  DetailController();

  final _product = Rxn<ProductModel>(null);
  ProductModel? get product => _product.value;

  void setProduct(ProductModel? product) {
    _product.value = product;
  }

  void addToCart() {
    cartController.addItem(CartItemModel(
        title: product!.title, image: product!.image ?? '', amount: 1));
  }
}
