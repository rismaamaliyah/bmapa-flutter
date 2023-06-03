import '../controller/kuy_controller.dart';
import 'package:get/get.dart';

class KuyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KuyController());
  }
}
