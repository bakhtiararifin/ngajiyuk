import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson.freezed.dart';
part 'lesson.g.dart';

@freezed
class Lesson with _$Lesson {
  factory Lesson({
    String? id,
    String? title,
    String? thumbnailUrl,
    String? description,
    String? prerequisite,
    @Default(0) int price,
    @Default(0) int discount,
    @Default(false) bool bought,
    @Default(false) bool paid,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);

  const Lesson._();

  int get sellPrice => price - discount;

  bool get isFree => price <= 0;
}
