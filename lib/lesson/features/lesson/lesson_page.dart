import 'package:flutter/material.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/model/lesson_item/lesson_item.dart';

class LessonPage extends StatelessWidget {
  final Lesson lesson;

  const LessonPage(this.lesson, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lesson.title),
      ),
      body: ListView.builder(
        itemCount: lesson.items.length,
        itemBuilder: (context, index) {
          final LessonItem lessonItem = lesson.items[index];
          return ListTile(
            title: Text(lessonItem.title),
            onTap: () {},
          );
        },
      ),
    );
  }
}
