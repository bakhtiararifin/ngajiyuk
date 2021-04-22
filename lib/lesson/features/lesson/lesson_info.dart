import 'package:flutter/material.dart';
import 'package:ngajiyuk/lesson/features/confirmation/confirmation_page.dart';
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
            style: Theme.of(context).textTheme.headline5,
          ),
          if (!lesson.isFree) _LessonPricing(lesson: lesson),
        ],
      ),
    );
  }
}

class _LessonPricing extends StatelessWidget {
  const _LessonPricing({
    Key? key,
    required this.lesson,
  }) : super(key: key);

  final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        Text(lesson.description),
        SizedBox(height: 8),
        Text(
          lesson.sellPrice.toString(),
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => _buyLesson(context),
            child: Text('Beli Sekarang'),
          ),
        ),
      ],
    );
  }

  void _buyLesson(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => ConfirmationPage()),
    );
  }
}
