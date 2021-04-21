import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_item.freezed.dart';
part 'lesson_item.g.dart';

@freezed
class LessonItem with _$LessonItem {
  const LessonItem._();

  factory LessonItem({
    String? id,
    required int index,
    required String title,
    String? youtubeId,
    String? videoUrl,
    @Default(false) bool watched,
  }) = _LessonItem;

  factory LessonItem.fromJson(Map<String, dynamic> json) =>
      _$LessonItemFromJson(json);

  String get url => 'https://www.youtube.com/watch?v=$youtubeId';

  String get thumbnailUrl =>
      'https://img.youtube.com/vi/$youtubeId/hqdefault.jpg';
}
