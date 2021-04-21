import 'package:flutter/material.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';

class LessonInfo extends StatelessWidget {
  final Lesson lesson;

  const LessonInfo({
    Key? key,
    required this.lesson,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lesson.title,
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(height: 8),
          Text(lesson.description),
        ],
      ),
    );
  }
}
