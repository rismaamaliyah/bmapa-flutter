import '../controller/login_tab_container_controller.dart';
import 'package:get/get.dart';

class LoginTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginTabContainerController());
  }
}
