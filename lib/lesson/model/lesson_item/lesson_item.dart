import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_item.freezed.dart';
part 'lesson_item.g.dart';

@freezed
class LessonItem with _$LessonItem {
  factory LessonItem({
    String? id,
    int? index,
    String? title,
    String? youtubeId,
    String? videoUrl,
    @Default(false) bool watched,
  }) = _LessonItem;

  factory LessonItem.fromJson(Map<String, dynamic> json) =>
      _$LessonItemFromJson(json);

  const LessonItem._();

  String get url => 'https://www.youtube.com/watch?v=$youtubeId';

  String get thumbnailUrl =>
      'https://img.youtube.com/vi/$youtubeId/hqdefault.jpg';
}
