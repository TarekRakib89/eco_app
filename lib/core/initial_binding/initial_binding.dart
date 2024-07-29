import 'package:eco_app/feature/bottom_nav/controller/bottom_nav_controller.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController());
  }
}
