import 'package:get/get.dart';
import 'package:get_app/models/product/cart_item_model.dart';

class CartController extends GetxController {
  final RxList<CartItemModel> _items = <CartItemModel>[].obs;
  List<CartItemModel> get items => _items;

  final RxInt _totalAmount = 1.obs;
  int get totalAmount => _totalAmount.value;

  void addItem(CartItemModel newItem) {
    int index = _items.indexWhere((element) => element.title == newItem.title);
    if (index < 0) {
      _items.add(newItem);
    } else {
      _items[index].amount++;
      _items.refresh();
    }

    _totalAmount.value =
        _items.fold(0, (prev, element) => prev + element.amount);

    update();
  }
}
