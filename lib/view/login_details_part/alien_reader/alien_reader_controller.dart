import 'package:get/get.dart';

class AlienReaderController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxInt selectedIndex1 = 0.obs;

  void toggle(int index) => selectedIndex.value = index;
  void toggle1(int index1) => selectedIndex1.value = index1;
}
