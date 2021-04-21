import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';

class LessonImage extends StatelessWidget {
  final Lesson lesson;
  const LessonImage({
    Key? key,
    required this.lesson,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: CachedNetworkImage(
        imageUrl: lesson.thumbnailUrl,
        progressIndicatorBuilder: (context, url, downloadProgress) {
          return Center(child: CircularProgressIndicator());
        },
        fit: BoxFit.cover,
      ),
    );
  }
}
