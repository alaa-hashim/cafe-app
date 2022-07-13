import 'package:cafe_app/controller/botttombarcontroller.dart';
import 'package:cafe_app/controller/categorycontroller.dart';
import 'package:cafe_app/controller/homepagecontroller.dart';
import 'package:get/get.dart';

import '../../controller/explorecontroller.dart';

class BottomNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavigationBarContorller>(
        () => BottomNavigationBarContorller());
    Get.lazyPut<HomepageController>(() => HomepageController());
    Get.lazyPut<CategroyController>(() => CategroyController());
    Get.lazyPut<ExploreController>(() => ExploreController());
  }
}
