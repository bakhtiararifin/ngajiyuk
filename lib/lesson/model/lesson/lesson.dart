import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ngajiyuk/lesson/model/lesson_item/lesson_item.dart';

part 'lesson.freezed.dart';
part 'lesson.g.dart';

@freezed
abstract class Lesson with _$Lesson {
  factory Lesson({
    String id,
    String title,
    List<LessonItem> items,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}
