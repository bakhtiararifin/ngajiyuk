part of 'lesson_items_bloc.dart';

@freezed
class LessonItemsEvent with _$LessonItemsEvent {
  const factory LessonItemsEvent.getLessonItems() = _GetLessonItems;

  const factory LessonItemsEvent.setLessonItems(
    List<LessonItem> lessonItems,
  ) = _SetLessonItems;
}
