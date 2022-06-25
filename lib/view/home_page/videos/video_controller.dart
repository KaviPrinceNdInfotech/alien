import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoController extends GetxController {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void onInit() {
    super.onInit();
    initializedPlayer();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
  }

  Future<void> initializedPlayer() async {
    videoPlayerController = VideoPlayerController.network(
        //'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4'
        //'https://www.youtube.com/watch?v=N8jGXROt37w'
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');

    await Future.wait([videoPlayerController.initialize()]);
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        autoPlay: true,
        looping: true,
        materialProgressColors: ChewieProgressColors(
          playedColor: Colors.red,
          handleColor: Colors.cyanAccent,
          backgroundColor: Colors.yellow,
          bufferedColor: Colors.green,
        ),
        placeholder: Container(
          color: Colors.greenAccent,
        ),
        autoInitialize: true);
    update();
  }
}
