import 'package:get/get.dart';

class ControllerUnicornButton extends GetxController {
  @override
  void onInit() {
    super.onInit();
    print('Hello On Init');
  }

  @override
  void onReady() {
    print('Hello On Ready');
  }

  @override
  void onClose() {
    print('Hello On Close');
  }
}
