import '../controller/pilih_controller.dart';
import 'package:get/get.dart';

class PilihBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PilihController());
  }
}
