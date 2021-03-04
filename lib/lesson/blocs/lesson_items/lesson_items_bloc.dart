import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/model/lesson_item/lesson_item.dart';
import 'package:ngajiyuk/lesson/repositories/lesson_repository.dart';

part 'lesson_items_event.dart';
part 'lesson_items_state.dart';
part 'lesson_items_bloc.freezed.dart';

@lazySingleton
class LessonItemsBloc extends Bloc<LessonItemsEvent, LessonItemsState> {
  final LessonRepository _lessonRepository;
  StreamSubscription _lessonItemsListener;

  LessonItemsBloc(
    this._lessonRepository,
  ) : super(_Initial());

  @override
  Stream<LessonItemsState> mapEventToState(
    LessonItemsEvent event,
  ) async* {
    yield* event.when(
      getLessonItems: _getLessonItems,
      setLessonItems: _setLessonItems,
    );
  }

  Stream<LessonItemsState> _setLessonItems(
    List<LessonItem> lessonItems,
  ) async* {
    yield LessonItemsState.success(lessonItems);
  }

  Stream<LessonItemsState> _getLessonItems(Lesson lesson) async* {
    yield LessonItemsState.loading();

    final lessonItemsStream = _lessonRepository.getLessonItems(lesson);

    _lessonItemsListener?.cancel();

    _lessonItemsListener = lessonItemsStream.listen(
      (List<LessonItem> lessonItems) {
        add(LessonItemsEvent.setLessonItems(lessonItems));
      },
    );
  }

  @override
  Future<void> close() {
    _lessonItemsListener?.cancel();
    return super.close();
  }
}
