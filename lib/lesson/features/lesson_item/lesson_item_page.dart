import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/core/theme/app_colors.dart';
import 'package:ngajiyuk/core/theme/app_typography.dart';
import 'package:ngajiyuk/core/theme/app_sizes.dart';
import 'package:ngajiyuk/lesson/blocs/lesson/lesson_bloc.dart';
import 'package:ngajiyuk/lesson/blocs/lesson_item/lesson_item_bloc.dart';
import 'package:ngajiyuk/lesson/blocs/lesson_items/lesson_items_bloc.dart';
import 'package:ngajiyuk/lesson/model/lesson_item/lesson_item.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class LessonItemPage extends StatefulWidget {
  const LessonItemPage({Key key}) : super(key: key);

  @override
  _LessonItemPageState createState() => _LessonItemPageState();
}

class _LessonItemPageState extends State<LessonItemPage> {
  YoutubePlayerController _controller;

  @override
  void didChangeDependencies() {
    final lessonItemBloc = BlocProvider.of<LessonItemBloc>(context);
    final LessonItem lessonItem = lessonItemBloc.state.maybeWhen(
      success: (lessonItem) => lessonItem,
      orElse: () => null,
    );

    _controller = YoutubePlayerController(
      initialVideoId: lessonItem.youtubeId,
      params: YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
      ),
    );

    _controller.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    };

    getIt<FirebaseAnalytics>().logEvent(
      name: 'LessonItemPage',
      parameters: lessonItem.toJson(),
    );

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildAppBarTitle(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          YoutubePlayerControllerProvider(
            controller: _controller,
            child: YoutubePlayerIFrame(
              aspectRatio: 16 / 9,
            ),
          ),
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
