import 'package:get/get.dart';

enum BottomNavBarItem { home, categories, cart, profile }

class BottomNavController extends GetxController {
  var currentPage = BottomNavBarItem.home.obs;

  void changepage(int index) {
    currentPage.value = BottomNavBarItem.values.elementAt(index);
    update();
  }
}
