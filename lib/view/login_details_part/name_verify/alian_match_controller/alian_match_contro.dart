import 'package:get/get.dart';

class AlienMatchController extends GetxController {
  RxInt selectedIndex = 0.obs;

  void toggle(int index) => selectedIndex.value = index;
}
