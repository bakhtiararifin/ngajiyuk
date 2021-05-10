import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ngajiyuk/common/services/formatter.dart';
import 'package:ngajiyuk/common/widgets/loading_widget.dart';
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
            return StaggeredGridView.count(
              crossAxisCount: 12,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              padding: const EdgeInsets.all(16),
              staggeredTiles: _getStaggeredTiles(lessons),
              children: lessons.map((e) => _Lesson(e)).toList(),
            );
          },
          orElse: () => LoadingWidget(),
        );
      },
    );
  }

  List<StaggeredTile> _getStaggeredTiles(List<Lesson> lessons) {
    return lessons.map((e) {
      return StaggeredTile.count(
        6,
        e.isFree || e.paid ? 5 : 6,
      );
    }).toList();
  }
}

class _Lesson extends StatelessWidget {
  final Lesson lesson;

  const _Lesson(
    this.lesson, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _gotoLessonPage(context),
      child: Container(
        decoration: _getDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _LessonImage(lesson: lesson),
            _LessonInfo(lesson: lesson),
          ],
        ),
      ),
    );
  }

  BoxDecoration _getDecoration() {
    return BoxDecoration(
      color: lesson.bought ? AppColors.grey.withAlpha(64) : Colors.transparent,
      borderRadius: BorderRadius.circular(8.0),
      border: Border.all(color: AppColors.grey.withAlpha(64)),
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

class _LessonInfo extends StatelessWidget {
  const _LessonInfo({
    Key? key,
    required this.lesson,
  }) : super(key: key);

  final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(lesson.title ?? ''),
            if (!lesson.isFree && !lesson.paid) SizedBox(height: 8),
            if (!lesson.isFree && !lesson.paid)
              Text(
                Formatter.formatNumber(lesson.sellPrice),
                style: Theme.of(context).textTheme.headline6,
              ),
          ],
        ),
      ),
    );
  }
}

class _LessonImage extends StatelessWidget {
  const _LessonImage({
    Key? key,
    required this.lesson,
  }) : super(key: key);

  final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    if (lesson.thumbnailUrl == null) return Container();

    return AspectRatio(
      aspectRatio: 16 / 9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: CachedNetworkImage(
          imageUrl: lesson.thumbnailUrl!,
          progressIndicatorBuilder: (context, url, downloadProgress) {
            return LoadingWidget();
          },
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
