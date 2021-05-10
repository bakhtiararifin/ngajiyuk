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
                  if (lessonItem.videoUrl != null)
                    VideoPlayer(lessonItem: lessonItem),
                  Padding(
                    padding: const EdgeInsets.all(AppSizes.paddingRegular),
                    child: Text(
                      'Daftar Video',
                      style: AppTypography.body,
                    ),
                  ),
                  Expanded(
                    child: _LessonItems(currentLessonItem: lessonItem),
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
          success: (lesson) => Text(lesson.title ?? ''),
          orElse: () => Container(),
        );
      },
    );
  }
}

class _LessonItems extends StatelessWidget {
  final LessonItem currentLessonItem;

  const _LessonItems({
    Key? key,
    required this.currentLessonItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonItemsBloc, LessonItemsState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (List<LessonItem> lessonItems) {
            return _buildLessonItems(currentLessonItem, lessonItems);
          },
          orElse: () => Center(child: CircularProgressIndicator()),
        );
      },
    );
  }

  Widget _buildLessonItems(
    LessonItem lessonItem,
    List<LessonItem> lessonItems,
  ) {
    return ListView.builder(
      itemCount: lessonItems.length,
      itemBuilder: (context, index) {
        final LessonItem lessonItem = lessonItems[index];

        return Container(
          color: _getBackgroundColor(lessonItem),
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            leading: _buildLeading(lessonItem),
            title: Text(lessonItem.title ?? ''),
            onTap: () => _gotoLessonItemPage(context, lessonItem),
          ),
        );
      },
    );
  }

  Color _getBackgroundColor(LessonItem lessonItem) {
    if (lessonItem == currentLessonItem) {
      return AppColors.primaryColor.withAlpha(32);
    } else if (lessonItem.watched) {
      return AppColors.grey.withAlpha(32);
    } else {
      return Colors.transparent;
    }
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
