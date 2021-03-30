import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ngajiyuk/auth/blocs/user/user_bloc.dart';
import 'package:ngajiyuk/auth/models/user/user.dart';
import 'package:ngajiyuk/lesson/model/learning/learning.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/repositories/learning_repository.dart';
import 'package:ngajiyuk/lesson/repositories/lesson_repository.dart';
import 'package:rxdart/rxdart.dart';

part 'lessons_event.dart';
part 'lessons_state.dart';
part 'lessons_bloc.freezed.dart';

@lazySingleton
class LessonsBloc extends Bloc<LessonsEvent, LessonsState> {
  final LessonRepository _lessonRepository;
  final LearningRepository _learningRepository;
  final UserBloc _userBloc;
  StreamSubscription _lessonListener;

  LessonsBloc(
    this._lessonRepository,
    this._learningRepository,
    this._userBloc,
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

    final User user = _userBloc.state.maybeWhen(
      success: (user) => user,
      orElse: () => null,
    );

    final lessonsStream = _lessonRepository.getLessons();
    final learningsStream = _learningRepository.getUserLearning(user);

    _lessonListener = Rx.combineLatest2(
      lessonsStream,
      learningsStream,
      (List<Lesson> rawLessons, List<Learning> learnings) {
        final List<Lesson> lessons = rawLessons.map((Lesson lesson) {
          final learning = learnings.firstWhere(
            (learning) => learning.lessonId == lesson.id,
            orElse: () => null,
          );

          return lesson.copyWith(watched: learning != null);
        }).toList();

        return lessons;
      },
    ).listen((List<Lesson> lessons) => add(LessonsEvent.setLessons(lessons)));
  }

  @override
  Future<void> close() {
    _lessonListener.cancel();
    return super.close();
  }
}
