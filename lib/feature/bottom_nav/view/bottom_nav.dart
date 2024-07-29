import 'package:eco_app/feature/bottom_nav/controller/bottom_nav_controller.dart';
import 'package:eco_app/feature/cart/view/cart_screen.dart';
import 'package:eco_app/feature/category/view/category_screen.dart';
import 'package:eco_app/feature/home/view/home_screen.dart';
import 'package:eco_app/feature/profile/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    var bottomNavController = Get.find<BottomNavController>();
    return Scaffold(
      bottomNavigationBar: SizedBox(
        child: Obx(
          () => BottomNavigationBar(
            onTap: (index) => bottomNavController.changepage(index),
            currentIndex: bottomNavController.currentPage.value.index,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Theme.of(context).primaryColor,
            type: BottomNavigationBarType.fixed,
            iconSize: 30,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.category), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            ],
          ),
        ),
      ),
      body: Obx(() => _bottomNavigationView()),
    );
  }

  _bottomNavigationView() {
    switch (Get.find<BottomNavController>().currentPage.value) {
      case BottomNavBarItem.home:
        return const HomeScreen();
      case BottomNavBarItem.categories:
        return const CategoryScreen();
      case BottomNavBarItem.cart:
        return const CartScreen();
      case BottomNavBarItem.profile:
        return const ProfileScreen();
      default:
        return const Text("no screen");
    }
  }
}
