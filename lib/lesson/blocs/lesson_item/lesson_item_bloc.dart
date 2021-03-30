import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ngajiyuk/lesson/model/lesson_item/lesson_item.dart';

part 'lesson_item_event.dart';
part 'lesson_item_state.dart';
part 'lesson_item_bloc.freezed.dart';

class LessonItemBloc extends Bloc<LessonItemEvent, LessonItemState> {
  LessonItemBloc() : super(_Initial());

  @override
  Stream<LessonItemState> mapEventToState(
    LessonItemEvent event,
  ) async* {
    yield* event.when(
      setLessonItem: _setLessonItem,
    );
  }

  Stream<LessonItemState> _setLessonItem(LessonItem lessonItem) async* {
    yield LessonItemState.success(lessonItem);
  }
}
