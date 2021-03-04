import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/lesson/blocs/lesson_items/lesson_items_bloc.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/model/lesson_item/lesson_item.dart';

class LessonItemPage extends StatefulWidget {
  final Lesson lesson;
  final LessonItem lessonItem;

  const LessonItemPage({
    Key key,
    @required this.lesson,
    @required this.lessonItem,
  }) : super(key: key);

  @override
  _LessonItemPageState createState() => _LessonItemPageState();
}

class _LessonItemPageState extends State<LessonItemPage> {
  @override
  void initState() {
    getIt<FirebaseAnalytics>().logEvent(
      name: 'LessonItemPage',
      parameters: widget.lessonItem.toJson(),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.lesson.title),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(widget.lessonItem.title),
          ),
          Expanded(
            child: BlocBuilder<LessonItemsBloc, LessonItemsState>(
              builder: (context, state) {
                return state.maybeWhen(
                  success: (List<LessonItem> lessonItems) {
                    final otherLessonItems = lessonItems
                        .where(
                          (lessonItem) => lessonItem.id != widget.lessonItem.id,
                        )
                        .toList();

                    return ListView.builder(
                      itemCount: otherLessonItems.length,
                      itemBuilder: (context, index) {
                        final LessonItem lessonItem = otherLessonItems[index];
                        return ListTile(
                          title: Text(lessonItem.title ?? ''),
                        );
                      },
                    );
                  },
                  orElse: () => Center(child: CircularProgressIndicator()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
