import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PostPage2Controller extends GetxController {
  RxInt selectedIndex = 0.obs;
  void toggle(int index) => selectedIndex.value = index;

  late TabController controller;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // It is mandatory initialize with one value from listType
  var selectedDrowpdown = 'abc';
  List dropdownText = ['abc', 'def', 'ghi'];
  final selected = "".obs;
}
