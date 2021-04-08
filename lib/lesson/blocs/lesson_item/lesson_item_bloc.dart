import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ngajiyuk/auth/blocs/user/user_bloc.dart';
import 'package:ngajiyuk/auth/models/user/user.dart';
import 'package:ngajiyuk/lesson/blocs/lesson/lesson_bloc.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/model/lesson_item/lesson_item.dart';
import 'package:ngajiyuk/lesson/repositories/learning_repository.dart';

part 'lesson_item_event.dart';
part 'lesson_item_state.dart';
part 'lesson_item_bloc.freezed.dart';

@lazySingleton
class LessonItemBloc extends Bloc<LessonItemEvent, LessonItemState> {
  final LearningRepository _learningRepository;
  final UserBloc _userBloc;
  final LessonBloc _lessonBloc;

  LessonItemBloc(
    this._learningRepository,
    this._userBloc,
    this._lessonBloc,
  ) : super(_Initial());

  @override
  Stream<LessonItemState> mapEventToState(
    LessonItemEvent event,
  ) async* {
    yield* event.when(
      setLessonItem: _setLessonItem,
    );
  }

  Stream<LessonItemState> _setLessonItem(LessonItem lessonItem) async* {
    final User? user = _userBloc.state.maybeWhen(
      success: (User user) => user,
      orElse: () => null,
    );
    final Lesson? lesson = _lessonBloc.state.maybeWhen(
      success: (Lesson lesson) => lesson,
      orElse: () => null,
    );

    if (user != null && lesson != null && !lessonItem.watched) {
      _learningRepository.saveLearningItem(user, lesson, lessonItem);
    }

    yield LessonItemState.success(lessonItem);
  }
}
