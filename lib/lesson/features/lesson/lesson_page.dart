import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/core/theme/app_colors.dart';
import 'package:ngajiyuk/lesson/blocs/lesson/lesson_bloc.dart';
import 'package:ngajiyuk/lesson/blocs/lesson_item/lesson_item_bloc.dart';
import 'package:ngajiyuk/lesson/blocs/lesson_items/lesson_items_bloc.dart';
import 'package:ngajiyuk/lesson/features/lesson_item/lesson_item_page.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/model/lesson_item/lesson_item.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({Key? key}) : super(key: key);

  @override
  _LessonPageState createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  @override
  void didChangeDependencies() {
    BlocProvider.of<LessonItemsBloc>(context).add(
      LessonItemsEvent.getLessonItems(),
    );

    final lessonBloc = BlocProvider.of<LessonBloc>(context);
    final Lesson? lesson = lessonBloc.state.maybeWhen(
      success: (lesson) => lesson,
      orElse: () => null,
    );

    getIt<FirebaseAnalytics>().logEvent(
      name: 'LessonPage',
      parameters: lesson?.toJson(),
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildAppBarTitle(),
      ),
      body: BlocBuilder<LessonItemsBloc, LessonItemsState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (List<LessonItem> lessonItems) {
              return _buildLessonItems(lessonItems);
            },
            orElse: () => Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }

  Widget _buildLessonItems(List<LessonItem> lessonItems) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 8),
      itemCount: lessonItems.length,
      itemBuilder: (context, index) {
        final LessonItem lessonItem = lessonItems[index];

        return Container(
          color: lessonItem.watched
              ? AppColors.grey.withAlpha(80)
              : Colors.transparent,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            leading: _buildLeading(lessonItem),
            title: Text(lessonItem.title),
            onTap: () => _gotoLessonItemPage(lessonItem),
          ),
        );
      },
    );
  }

  Widget _buildLeading(LessonItem lessonItem) {
    if (lessonItem.youtubeId != null) {
      return Image(
        image: NetworkImage(lessonItem.thumbnailUrl),
      );
    }

    return Container(
      height: 32,
      width: 32,
      alignment: Alignment.center,
      child: Text(lessonItem.index.toString()),
      decoration: BoxDecoration(
        color: AppColors.grey.withAlpha(64),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }

  Widget _buildAppBarTitle() {
    return BlocBuilder<LessonBloc, LessonState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (lesson) => Text(lesson.title),
          orElse: () => Container(),
        );
      },
    );
  }

  void _gotoLessonItemPage(LessonItem lessonItem) {
    BlocProvider.of<LessonItemBloc>(context).add(
      LessonItemEvent.setLessonItem(lessonItem),
    );

    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LessonItemPage()),
    );
  }
}
