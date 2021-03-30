part of 'lesson_item_bloc.dart';

@freezed
abstract class LessonItemEvent with _$LessonItemEvent {
  const factory LessonItemEvent.setLessonItem(LessonItem lessonItem) =
      _SetLessonItem;
}
