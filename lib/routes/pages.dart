import 'package:get/get.dart';
import 'package:get_app/modules/cart/bindings/cart_binding.dart';
import 'package:get_app/modules/cart/views/cart_view.dart';
import 'package:get_app/modules/detail/bindings/detail_binding.dart';
import 'package:get_app/modules/detail/views/detail_view.dart';
import 'package:get_app/modules/home/bindings/home_binding.dart';
import 'package:get_app/modules/home/views/home_view.dart';
part 'routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      bindings: [
        HomeBinding(),
        CartBinding(),
        DetailBinding(),
      ],
      children: [
        GetPage(name: Routes.DETAIL, page: () => const DetailPage()),
        GetPage(name: Routes.CART, page: () => const CartPage())
      ],
    ),
  ];
}
