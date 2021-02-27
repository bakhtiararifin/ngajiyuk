part of 'lessons_bloc.dart';

@freezed
abstract class LessonsState with _$LessonsState {
  const factory LessonsState.initial() = _Initial;
  const factory LessonsState.loading() = _Loading;
  const factory LessonsState.success(List<Lesson> lessons) = _Success;
  const factory LessonsState.error() = _Error;
}
