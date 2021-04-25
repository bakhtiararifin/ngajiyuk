import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ngajiyuk/lesson/blocs/lessons/lessons_bloc.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';

part 'lesson_event.dart';
part 'lesson_state.dart';
part 'lesson_bloc.freezed.dart';

@lazySingleton
class LessonBloc extends Bloc<LessonEvent, LessonState> {
  final LessonsBloc _lessonsBloc;

  StreamSubscription? _lessonsListener;

  LessonBloc(this._lessonsBloc) : super(_Initial()) {}

  @override
  Stream<LessonState> mapEventToState(
    LessonEvent event,
  ) async* {
    yield* event.when(
      setLesson: _setLesson,
    );
  }

  Stream<LessonState> _setLesson(Lesson lesson) async* {
    _lessonsListener?.cancel();

    _lessonsListener = _lessonsBloc.stream.listen((event) {
      final List<Lesson>? lessons = event.maybeWhen(
        success: (List<Lesson> lessons) => lessons,
        orElse: () => null,
      );

      if (lessons == null) return;

      final Iterable<Lesson> updatedLessons = lessons.where(
        (element) => element.id == lesson.id,
      );

      if (updatedLessons.length > 0) {
        add(LessonEvent.setLesson(updatedLessons.first));
      }
    });

    yield LessonState.success(lesson);
  }

  @override
  Future<void> close() {
    _lessonsListener?.cancel();
    return super.close();
  }
}
