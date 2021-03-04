import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/lesson/blocs/lesson_items/lesson_items_bloc.dart';
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
      body: BlocBuilder<LessonItemsBloc, LessonItemsState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (List<LessonItem> lessonItems) {
              return ListView.builder(
                itemCount: lessonItems.length,
                itemBuilder: (context, index) {
                  final LessonItem lessonItem = lessonItems[index];
                  return ListTile(
                    title: Text(lessonItem.title ?? ''),
                    onTap: () => _watchLessonItem(lessonItem),
                  );
                },
              );
            },
            orElse: () => Center(child: CircularProgressIndicator()),
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

    launch(lessonItem.url);
  }
}
