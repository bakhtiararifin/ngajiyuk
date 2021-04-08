part of 'lesson_item_bloc.dart';

@freezed
class LessonItemEvent with _$LessonItemEvent {
  const factory LessonItemEvent.setLessonItem(LessonItem lessonItem) =
      _SetLessonItem;
}
