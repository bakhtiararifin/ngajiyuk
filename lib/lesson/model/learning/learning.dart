import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning.freezed.dart';
part 'learning.g.dart';

@freezed
abstract class Learning with _$Learning {
  factory Learning({
    String id,
    String userId,
    String userName,
    String userEmail,
    String lessonId,
    String lessonTitle,
  }) = _Learning;

  factory Learning.fromJson(Map<String, dynamic> json) =>
      _$LearningFromJson(json);
}
