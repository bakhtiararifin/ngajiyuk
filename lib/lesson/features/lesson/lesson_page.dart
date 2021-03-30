import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/lesson/blocs/lesson_items/lesson_items_bloc.dart';
import 'package:ngajiyuk/lesson/features/lesson_item/lesson_item_page.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/model/lesson_item/lesson_item.dart';

class LessonPage extends StatefulWidget {
  final Lesson lesson;

  const LessonPage(this.lesson, {Key key}) : super(key: key);

  @override
  _LessonPageState createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  @override
  void initState() {
    getIt<FirebaseAnalytics>().logEvent(
      name: 'LessonPage',
      parameters: widget.lesson.toJson(),
    );

    super.initState();
  }

  @override
  void didChangeDependencies() {
    BlocProvider.of<LessonItemsBloc>(context).add(
      LessonItemsEvent.getLessonItems(widget.lesson),
    );
    super.didChangeDependencies();
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
                padding: EdgeInsets.only(top: 16),
                itemCount: lessonItems.length,
                itemBuilder: (context, index) {
                  final LessonItem lessonItem = lessonItems[index];
                  return ListTile(
                    contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                    leading: Image(
                      image: NetworkImage(lessonItem.thumbnailUrl),
                    ),
                    title: Text(lessonItem.title ?? ''),
                    onTap: () => _gotoLessonItemPage(lessonItem),
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

  void _gotoLessonItemPage(LessonItem lessonItem) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => LessonItemPage(
          lesson: widget.lesson,
          lessonItem: lessonItem,
        ),
      ),
    );
  }
}
