import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var tabIndexBottomNavigationBar = 0;
  var tabIndexBottomNavigationBarFancy = 0.obs;
  GlobalKey bottomNavigationKey = GlobalKey();
  late PageController pageController;
  void changeTabIndex(int? index) {
    tabIndexBottomNavigationBar = index!;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    pageController.dispose();
  }
}
