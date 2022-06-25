import 'package:get/get.dart';

class MatchingCriteriaController extends GetxController {
  RxInt selectedIndex = 0.obs;

  void toggle(int index) => selectedIndex.value = index;
}
