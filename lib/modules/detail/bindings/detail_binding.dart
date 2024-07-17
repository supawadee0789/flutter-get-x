import 'package:get/get.dart';
import 'package:get_app/modules/detail/controllers/detail_controller.dart';

class DetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DetailController());
  }
}
