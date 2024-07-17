import 'package:get/get.dart';
import 'package:get_app/apis/providers/api_provider.dart';
import 'package:get_app/modules/home/controllers/home_controller.dart';
import 'package:get_app/modules/home/repositories/home_repository_impl.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
        () => HomeController(HomeRepositoryImpl(ApiProvider())));
  }
}
