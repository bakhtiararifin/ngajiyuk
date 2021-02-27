import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/repositories/lesson_repository.dart';

part 'lessons_event.dart';
part 'lessons_state.dart';
part 'lessons_bloc.freezed.dart';

@lazySingleton
class LessonsBloc extends Bloc<LessonsEvent, LessonsState> {
  final LessonRepository _lessonRepository;
  StreamSubscription _lessonListener;

  LessonsBloc(
    this._lessonRepository,
  ) : super(_Initial());

  @override
  Stream<LessonsState> mapEventToState(
    LessonsEvent event,
  ) async* {
    yield* event.when(
      getLessons: _getLessons,
      setLessons: _setLessons,
    );
  }

  Stream<LessonsState> _setLessons(List<Lesson> lessons) async* {
    yield LessonsState.success(lessons);
  }

  Stream<LessonsState> _getLessons() async* {
    yield LessonsState.loading();

    final lessonsStream = _lessonRepository.getLessons();
    _lessonListener = lessonsStream.listen(
      (List<Lesson> lessons) => add(LessonsEvent.setLessons(lessons)),
    );
  }

  @override
  Future<void> close() {
    _lessonListener.cancel();
    return super.close();
  }
}
