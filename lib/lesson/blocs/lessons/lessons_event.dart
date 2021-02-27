part of 'lessons_bloc.dart';

@freezed
abstract class LessonsEvent with _$LessonsEvent {
  const factory LessonsEvent.getLessons() = _SetLessons;
  const factory LessonsEvent.setLessons(List<Lesson> lessons) = _GetLessons;
}
