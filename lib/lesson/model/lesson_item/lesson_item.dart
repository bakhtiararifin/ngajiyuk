import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_item.freezed.dart';
part 'lesson_item.g.dart';

@freezed
abstract class LessonItem with _$LessonItem {
  factory LessonItem({
    String id,
    String title,
    String youtubeId,
  }) = _LessonItem;

  factory LessonItem.fromJson(Map<String, dynamic> json) =>
      _$LessonItemFromJson(json);

  @late
  get url => 'https://www.youtube.com/watch?v=$youtubeId';

  @late
  get thumbnailUrl => 'https://img.youtube.com/vi/$youtubeId/hqdefault.jpg';
}
