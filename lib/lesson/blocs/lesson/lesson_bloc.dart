import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';

part 'lesson_event.dart';
part 'lesson_state.dart';
part 'lesson_bloc.freezed.dart';

@lazySingleton
class LessonBloc extends Bloc<LessonEvent, LessonState> {
  LessonBloc() : super(_Initial());

  @override
  Stream<LessonState> mapEventToState(
    LessonEvent event,
  ) async* {
    yield* event.when(
      setLesson: _setLesson,
    );
  }

  Stream<LessonState> _setLesson(Lesson lesson) async* {
    yield LessonState.success(lesson);
  }
}
