import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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
  final LessonBloc _lessonBloc;

  LessonItemBloc(
    this._learningRepository,
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
    _lessonBloc.state.maybeWhen(
      success: (Lesson lesson) {
        _learningRepository.saveLearningItem(lesson, lessonItem);
      },
      orElse: () {},
    );

    yield LessonItemState.success(lessonItem);
  }
}
