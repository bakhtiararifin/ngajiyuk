import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson.freezed.dart';
part 'lesson.g.dart';

@freezed
class Lesson with _$Lesson {
  const Lesson._();

  factory Lesson({
    String? id,
    required String title,
    required String thumbnailUrl,
    required String description,
    required String prerequisite,
    required int price,
    required int discount,
    @Default(false) bool watched,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);

  int get sellPrice => price - discount;

  bool get isFree => price <= 0;
}
