import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ngajiyuk/auth/blocs/user/user_bloc.dart';
import 'package:ngajiyuk/auth/models/user/user.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/repositories/learning_repository.dart';

part 'lesson_event.dart';
part 'lesson_state.dart';
part 'lesson_bloc.freezed.dart';

@lazySingleton
class LessonBloc extends Bloc<LessonEvent, LessonState> {
  final LearningRepository _learningRepository;
  final UserBloc _userBloc;

  LessonBloc(
    this._learningRepository,
    this._userBloc,
  ) : super(_Initial());

  @override
  Stream<LessonState> mapEventToState(
    LessonEvent event,
  ) async* {
    yield* event.when(
      setLesson: _setLesson,
    );
  }

  Stream<LessonState> _setLesson(Lesson lesson) async* {
    _userBloc.state.maybeWhen(
      success: (User user) {
        _learningRepository.saveLearning(user, lesson);
      },
      orElse: () {},
    );

    yield LessonState.success(lesson);
  }
}
