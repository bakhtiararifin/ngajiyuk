import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/core/theme/app_typography.dart';
import 'package:ngajiyuk/core/theme/app_sizes.dart';
import 'package:ngajiyuk/lesson/blocs/lesson_items/lesson_items_bloc.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/model/lesson_item/lesson_item.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

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
  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: widget.lessonItem.youtubeId,
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
      parameters: widget.lessonItem.toJson(),
    );

    super.initState();
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
        title: Text(widget.lesson.title),
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
                          leading: Image(
                            image: NetworkImage(lessonItem.thumbnailUrl),
                          ),
                          title: Text(lessonItem.title ?? ''),
                          onTap: () => _gotoLessonItemPage(lessonItem),
                          contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
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

  void _gotoLessonItemPage(LessonItem lessonItem) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => LessonItemPage(
          lesson: widget.lesson,
          lessonItem: lessonItem,
        ),
      ),
    );
  }
}
