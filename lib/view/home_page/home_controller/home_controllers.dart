import 'dart:async';

import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class HomeController extends GetxController {
  final source =
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4';
  VideoPlayerController? controller;
  RxBool isLoader = true.obs;
// from here checkbox,..............
  Rx<bool> handlerRequired = false.obs;
  onHandlerChanged(handlerValue) {
    //handlerRequired(handlerValue);
    handlerRequired.value = handlerValue;
  }

  ///todo multiple drop down
  // List<String> options = ["GetX", "Provider", "BloC", "MobX"];
  // Rx<List<String>> selectedOptionList = Rx<List<String>>([]);
  // var selectedOption = ''.obs;

  // from here drop down......

  RxString selected = ''.obs;
  List<String> dropdownText = [
    'Trending',
    'Posts',
    'Most Viewed',
    'My Favourite'
  ];
  //final selected = "".obs;

  @override
  void onInit() {
    controller = VideoPlayerController.network(source)
      //VideoPlayerController.asset("lib/assets/video/Jewelry_Box_Logo.mp4")
      ..addListener(() => update())
      ..setLooping(false)
      ..initialize().then((_) {
        controller!.play();
        update();
        isLoader.value = false;
      });
    super.onInit();

    //this is hide and show

    Timer(Duration(seconds: 5), () {
      print('Hello');
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void setSelected(String value) {
    selected.value = value;

    @override
    void dispose() {
      super.dispose();
      controller?.dispose();
    }
  }
}
