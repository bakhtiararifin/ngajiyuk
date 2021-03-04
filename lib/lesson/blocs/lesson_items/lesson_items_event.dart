part of 'lesson_items_bloc.dart';

@freezed
abstract class LessonItemsEvent with _$LessonItemsEvent {
  const factory LessonItemsEvent.getLessonItems(
    Lesson lesson,
  ) = _GetLessonItems;

  const factory LessonItemsEvent.setLessonItems(
    List<LessonItem> lessonItems,
  ) = _SetLessonItems;
}
