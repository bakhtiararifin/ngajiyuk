part of 'lesson_item_bloc.dart';

@freezed
abstract class LessonItemState with _$LessonItemState {
  const factory LessonItemState.initial() = _Initial;
  const factory LessonItemState.loading() = _Loading;
  const factory LessonItemState.success(LessonItem lessonItem) = _Success;
  const factory LessonItemState.error() = _Error;
}
