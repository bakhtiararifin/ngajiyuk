import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/core/theme/app_colors.dart';
import 'package:ngajiyuk/lesson/blocs/lesson/lesson_bloc.dart';
import 'package:ngajiyuk/lesson/blocs/lessons/lessons_bloc.dart';
import 'package:ngajiyuk/lesson/features/lesson/lesson_page.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonsBloc, LessonsState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (List<Lesson> lessons) {
            return GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(16),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: lessons.map((lesson) => _Lesson(lesson)).toList(),
            );
          },
          orElse: () => Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}

class _Lesson extends StatelessWidget {
  final Lesson lesson;

  const _Lesson(
    this.lesson, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _gotoLessonPage(context),
      child: Container(
        decoration: BoxDecoration(
          color: lesson.watched
              ? AppColors.grey.withAlpha(80)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 4 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: CachedNetworkImage(
                  imageUrl: lesson.thumbnailUrl,
                  progressIndicatorBuilder: (context, url, downloadProgress) {
                    return Center(child: CircularProgressIndicator());
                  },
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  lesson.title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _gotoLessonPage(BuildContext context) {
    BlocProvider.of<LessonBloc>(context).add(
      LessonEvent.setLesson(lesson),
    );

    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LessonPage()),
    );
  }
}
