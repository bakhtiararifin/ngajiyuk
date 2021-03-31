import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ngajiyuk/auth/blocs/user/user_bloc.dart';
import 'package:ngajiyuk/auth/models/user/user.dart';
import 'package:ngajiyuk/lesson/model/learning_item/learning_item.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/model/lesson_item/lesson_item.dart';
import 'package:ngajiyuk/lesson/repositories/learning_repository.dart';
import 'package:ngajiyuk/lesson/repositories/lesson_repository.dart';
import 'package:rxdart/rxdart.dart';

part 'lesson_items_event.dart';
part 'lesson_items_state.dart';
part 'lesson_items_bloc.freezed.dart';

@lazySingleton
class LessonItemsBloc extends Bloc<LessonItemsEvent, LessonItemsState> {
  final LessonRepository _lessonRepository;
  final LearningRepository _learningRepository;
  final UserBloc _userBloc;

  StreamSubscription _lessonItemsListener;

  LessonItemsBloc(
    this._lessonRepository,
    this._learningRepository,
    this._userBloc,
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

    final User user = _userBloc.state.maybeWhen(
      success: (user) => user,
      orElse: () => null,
    );

    if (user == null) {
      final lessonItemsStream = _lessonRepository.getLessonItems(lesson);

      _lessonItemsListener?.cancel();

      _lessonItemsListener = lessonItemsStream.listen(
        (List<LessonItem> lessonItems) {
          add(LessonItemsEvent.setLessonItems(lessonItems));
        },
      );
    } else {
      final lessonItemsStream = _lessonRepository.getLessonItems(lesson);
      final learningItemsStream = _learningRepository.getLearningItems(
        user,
        lesson,
      );

      _lessonItemsListener?.cancel();

      _lessonItemsListener = Rx.combineLatest2(
        lessonItemsStream,
        learningItemsStream,
        (List<LessonItem> rawLessonItems, List<LearningItem> learningItems) {
          final List<LessonItem> lessonItems = rawLessonItems.map((
            LessonItem lessonItem,
          ) {
            final learningItem = learningItems.firstWhere(
              (learningItem) => learningItem.lessonItemId == lessonItem.id,
              orElse: () => null,
            );

            return lessonItem.copyWith(watched: learningItem != null);
          }).toList();

          return lessonItems;
        },
      ).listen(
        (List<LessonItem> lessonItems) {
          add(LessonItemsEvent.setLessonItems(lessonItems));
        },
      );
    }
  }

  @override
  Future<void> close() {
    _lessonItemsListener?.cancel();
    return super.close();
  }
}
