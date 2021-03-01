import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/model/lesson_item/lesson_item.dart';
import 'package:url_launcher/url_launcher.dart';

class LessonPage extends StatefulWidget {
  final Lesson lesson;

  const LessonPage(this.lesson, {Key key}) : super(key: key);

  @override
  _LessonPageState createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  @override
  void initState() {
    getIt<FirebaseAnalytics>().setCurrentScreen(screenName: 'LessonPage');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.lesson.title),
      ),
      body: ListView.builder(
        itemCount: widget.lesson.items.length,
        itemBuilder: (context, index) {
          final LessonItem lessonItem = widget.lesson.items[index];
          return ListTile(
            title: Text(lessonItem.title),
            onTap: () => _watchLessonItem(lessonItem),
          );
        },
      ),
    );
  }

  void _watchLessonItem(LessonItem lessonItem) {
    getIt<FirebaseAnalytics>().logEvent(
      name: 'WatchLessonItem',
      parameters: lessonItem.toJson(),
    );

    launch(lessonItem.link);
  }
}
