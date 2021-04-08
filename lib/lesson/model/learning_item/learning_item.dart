import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_item.freezed.dart';
part 'learning_item.g.dart';

@freezed
class LearningItem with _$LearningItem {
  factory LearningItem({
    String? id,
    String? lessonItemId,
    String? lessonItemTitle,
    String? youtubeId,
  }) = _LearningItem;

  factory LearningItem.fromJson(Map<String, dynamic> json) =>
      _$LearningItemFromJson(json);
}
