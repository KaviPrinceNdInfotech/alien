import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BottomController extends GetxController {
  List<String> myFav =
      ["Alien", "Clip", "Explore", "Contect", "Services", "Jobs"].obs;
  List<IconData> icons = [
    Icons.sentiment_very_dissatisfied,
    Icons.home,
    Icons.drafts,
    Icons.backspace,
    Icons.dashboard,
    Icons.person_rounded,
  ].obs;
  var tabIndex = 1.obs;

  void changeTabIndex(int newindex) {
    tabIndex.value = newindex;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void reorder(oldIndex, newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final items = myFav.removeAt(oldIndex);
    myFav.insert(newIndex, items);
  }

  void reordericon(oldIndex, newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final items = icons.removeAt(oldIndex);
    icons.insert(newIndex, items);
  }
}
