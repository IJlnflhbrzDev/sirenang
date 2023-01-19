import 'package:get/get.dart';

class HomeController extends GetxController {
  var tabIndexBottomNavigationBar = 0;
  void changeTabIndex(int? index) {
    tabIndexBottomNavigationBar = index!;
    update();
  }
}
