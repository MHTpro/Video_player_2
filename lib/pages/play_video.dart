import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class PlayVideo extends StatefulWidget {
  final int? theVideoNumber;
  const PlayVideo({
    super.key,
    required this.theVideoNumber,
  });

  @override
  State<PlayVideo> createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {
  //create controllers
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    //load files
    videoPlayerController = VideoPlayerController.asset(
      widget.theVideoNumber == 1
          ? "assets/videos/tiger.mp4"
          : "assets/videos/jaguar.mp4",
    );

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      showControlsOnInitialize: true,
      showControls: true,
      // aspectRatio: 0.,
    );
    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: chewieController != null
          ? SafeArea(
              child: Center(
                child: Chewie(
                  controller: chewieController!,
                ),
              ),
            )
          : CircularProgressIndicator(
              backgroundColor: Colors.yellow.shade600,
            ),
    );
  }
}
