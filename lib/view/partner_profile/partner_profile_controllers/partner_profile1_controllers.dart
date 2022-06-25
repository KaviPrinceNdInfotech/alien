import 'package:get/get.dart';

class Partnerprofile1Controller extends GetxController {
  //image pick code

  RxBool on = false.obs;
  RxBool off = true.obs; // our observable

  // swap true/false & save it to observable
  void toggle() => on.value = on.value ? false : true;
  // a variable to On Off Switch in flutter

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  //image picker...

}
