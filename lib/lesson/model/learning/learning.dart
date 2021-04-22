import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning.freezed.dart';
part 'learning.g.dart';

@freezed
class Learning with _$Learning {
  factory Learning({
    String? id,
    String? userId,
    String? userName,
    String? userEmail,
    String? lessonId,
    String? lessonTitle,
    @Default(false) bool paid,
  }) = _Learning;

  factory Learning.fromJson(Map<String, dynamic> json) =>
      _$LearningFromJson(json);
}
