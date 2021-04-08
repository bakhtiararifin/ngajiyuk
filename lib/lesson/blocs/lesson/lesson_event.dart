part of 'lesson_bloc.dart';

@freezed
class LessonEvent with _$LessonEvent {
  const factory LessonEvent.setLesson(Lesson lesson) = _SetLesson;
}
