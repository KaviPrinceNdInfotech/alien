import 'package:alien/view/home_page/videos/video_controller.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoPlayers extends StatelessWidget {
  const VideoPlayers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GetBuilder<VideoController>(
            init: VideoController(),
            builder: (controller) => Expanded(
              child: Center(
                child: controller.chewieController != null &&
                        controller.chewieController!.videoPlayerController.value
                            .isInitialized
                    ? Chewie(controller: controller.chewieController!)
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Loading')
                        ],
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
