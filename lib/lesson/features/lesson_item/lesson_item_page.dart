import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/core/theme/app_colors.dart';
import 'package:ngajiyuk/core/theme/app_typography.dart';
import 'package:ngajiyuk/core/theme/app_sizes.dart';
import 'package:ngajiyuk/lesson/blocs/lesson/lesson_bloc.dart';
import 'package:ngajiyuk/lesson/blocs/lesson_item/lesson_item_bloc.dart';
import 'package:ngajiyuk/lesson/blocs/lesson_items/lesson_items_bloc.dart';
import 'package:ngajiyuk/lesson/features/lesson_item/video_player.dart';
import 'package:ngajiyuk/lesson/features/lesson_item/youtube_player.dart';
import 'package:ngajiyuk/lesson/model/lesson_item/lesson_item.dart';

class LessonItemPage extends StatefulWidget {
  const LessonItemPage({Key? key}) : super(key: key);

  @override
  _LessonItemPageState createState() => _LessonItemPageState();
}

class _LessonItemPageState extends State<LessonItemPage> {
  @override
  void initState() {
    super.initState();
    final lessonItemBloc = BlocProvider.of<LessonItemBloc>(context);
    final LessonItem? lessonItem = lessonItemBloc.state.maybeWhen(
      success: (lessonItem) => lessonItem,
      orElse: () => null,
    );

    getIt<FirebaseAnalytics>().logEvent(
      name: 'LessonItemPage',
      parameters: {
        'id': lessonItem?.id ?? '',
        'title': lessonItem?.title ?? '',
      },
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildAppBarTitle(),
      ),
      body: BlocBuilder<LessonItemBloc, LessonItemState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (LessonItem lessonItem) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (lessonItem.youtubeId != null)
                    YoutubePlayer(lessonItem: lessonItem),
                  if (lessonItem.youtubeId == null)
                    VideoPlayer(lessonItem: lessonItem),
                  Padding(
                    padding: const EdgeInsets.all(AppSizes.paddingRegular),
                    child: Text(
                      'Video Lainnya',
                      style: AppTypography.body,
                    ),
                  ),
                  Expanded(
                    child: _OtherLessonItems(),
                  ),
                ],
              );
            },
            orElse: () => Center(child: CircularProgressIndicator()),
          );
        },
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
}

class _OtherLessonItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonItemBloc, LessonItemState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (LessonItem lessonItem) {
            return _buildLessonItemsBloc(lessonItem);
          },
          orElse: () => Center(child: CircularProgressIndicator()),
        );
      },
    );
  }

  Widget _buildLessonItemsBloc(LessonItem lessonItem) {
    return BlocBuilder<LessonItemsBloc, LessonItemsState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (List<LessonItem> lessonItems) {
            return _buildOtherLessonItems(lessonItem, lessonItems);
          },
          orElse: () => Center(child: CircularProgressIndicator()),
        );
      },
    );
  }

  Widget _buildOtherLessonItems(
    LessonItem lessonItem,
    List<LessonItem> lessonItems,
  ) {
    final otherLessonItems =
        lessonItems.where((e) => e.id != lessonItem.id).toList();

    return ListView.builder(
      itemCount: otherLessonItems.length,
      itemBuilder: (context, index) {
        final LessonItem lessonItem = otherLessonItems[index];

        return Container(
          color: lessonItem.watched
              ? AppColors.grey.withAlpha(80)
              : Colors.transparent,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            leading: Image(
              image: NetworkImage(lessonItem.thumbnailUrl),
            ),
            title: Text(lessonItem.title ?? ''),
            onTap: () => _gotoLessonItemPage(context, lessonItem),
          ),
        );
      },
    );
  }

  void _gotoLessonItemPage(
    BuildContext context,
    LessonItem lessonItem,
  ) {
    BlocProvider.of<LessonItemBloc>(context).add(
      LessonItemEvent.setLessonItem(lessonItem),
    );

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => LessonItemPage()),
    );
  }
}
