import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:ngajiyuk/lesson/model/lesson_item/lesson_item.dart';
import 'package:video_player/video_player.dart';

class VideoPlayer extends StatefulWidget {
  final LessonItem lessonItem;

  const VideoPlayer({
    Key? key,
    required this.lessonItem,
  }) : super(key: key);

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    _videoPlayerController = VideoPlayerController.network(
      widget.lessonItem.videoUrl ?? '',
    );
    await _videoPlayerController.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
    );
    setState(() {});
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 560 / 320,
      child: _chewieController != null &&
              _chewieController!.videoPlayerController.value.isInitialized
          ? Chewie(controller: _chewieController!)
          : Center(child: const CircularProgressIndicator()),
    );
  }
}
