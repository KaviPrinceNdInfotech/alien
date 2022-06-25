import 'package:get/get.dart';

class ServiceCatContrioller extends GetxController {
  RxInt selectedIndex = 0.obs;

  void toggle(int index) => selectedIndex.value = index;
}
