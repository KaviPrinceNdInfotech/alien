import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profilepartner3controller extends GetxController
    with GetSingleTickerProviderStateMixin {
  RxInt selectedIndex = 0.obs;
  void toggle(int index) => selectedIndex.value = index;

  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Food'),
    Tab(text: 'Doctor'),
    Tab(text: 'Service'),
  ];

  late TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
