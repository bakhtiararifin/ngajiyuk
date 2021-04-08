part of 'lesson_items_bloc.dart';

@freezed
class LessonItemsState with _$LessonItemsState {
  const factory LessonItemsState.initial() = _Initial;
  const factory LessonItemsState.loading() = _Loading;
  const factory LessonItemsState.success(
    List<LessonItem> lessonItems,
  ) = _Success;
  const factory LessonItemsState.error() = _Error;
}
