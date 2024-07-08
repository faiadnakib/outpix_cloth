import 'package:e_com_app_outpix/consts/consts.dart';
import 'package:e_com_app_outpix/consts/controllers/home_controller.dart';
import 'package:e_com_app_outpix/views/auth_screen/cart_screen/cart_screen.dart';
import 'package:e_com_app_outpix/views/auth_screen/category/category.dart';
import 'package:e_com_app_outpix/views/auth_screen/home_screen/home_screen.dart';
import 'package:e_com_app_outpix/views/auth_screen/profile_screen/profile_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbarItem = [
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26),label: "Home"),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26),label: "Categories"),
      BottomNavigationBarItem(icon: Image.asset(icCart,width: 26),label: "Cart"),
      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26),label: "Profile"),
    ];

    var navBody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(()=>Expanded(child: navBody.elementAt(controller.currentNavIndex.value)),),
        ],
      ),
      bottomNavigationBar: Obx(()=>
       BottomNavigationBar(
         currentIndex: controller.currentNavIndex.value,
        selectedItemColor: redColor,
        selectedLabelStyle: const TextStyle(fontFamily: semibold),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: navbarItem,
         onTap: (value){
           controller.currentNavIndex.value=value;

         },
      ),
      ),
    );
  }
}
