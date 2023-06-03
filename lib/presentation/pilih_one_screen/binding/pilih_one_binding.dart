import '../controller/pilih_one_controller.dart';
import 'package:get/get.dart';

class PilihOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PilihOneController());
  }
}
