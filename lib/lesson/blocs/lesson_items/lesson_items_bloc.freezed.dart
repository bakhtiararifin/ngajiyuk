// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lesson_items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LessonItemsEventTearOff {
  const _$LessonItemsEventTearOff();

// ignore: unused_element
  _GetLessonItems getLessonItems(Lesson lesson) {
    return _GetLessonItems(
      lesson,
    );
  }

// ignore: unused_element
  _SetLessonItems setLessonItems(List<LessonItem> lessonItems) {
    return _SetLessonItems(
      lessonItems,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LessonItemsEvent = _$LessonItemsEventTearOff();

/// @nodoc
mixin _$LessonItemsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getLessonItems(Lesson lesson),
    @required TResult setLessonItems(List<LessonItem> lessonItems),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getLessonItems(Lesson lesson),
    TResult setLessonItems(List<LessonItem> lessonItems),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getLessonItems(_GetLessonItems value),
    @required TResult setLessonItems(_SetLessonItems value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getLessonItems(_GetLessonItems value),
    TResult setLessonItems(_SetLessonItems value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LessonItemsEventCopyWith<$Res> {
  factory $LessonItemsEventCopyWith(
          LessonItemsEvent value, $Res Function(LessonItemsEvent) then) =
      _$LessonItemsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LessonItemsEventCopyWithImpl<$Res>
    implements $LessonItemsEventCopyWith<$Res> {
  _$LessonItemsEventCopyWithImpl(this._value, this._then);

  final LessonItemsEvent _value;
  // ignore: unused_field
  final $Res Function(LessonItemsEvent) _then;
}

/// @nodoc
abstract class _$GetLessonItemsCopyWith<$Res> {
  factory _$GetLessonItemsCopyWith(
          _GetLessonItems value, $Res Function(_GetLessonItems) then) =
      __$GetLessonItemsCopyWithImpl<$Res>;
  $Res call({Lesson lesson});

  $LessonCopyWith<$Res> get lesson;
}

/// @nodoc
class __$GetLessonItemsCopyWithImpl<$Res>
    extends _$LessonItemsEventCopyWithImpl<$Res>
    implements _$GetLessonItemsCopyWith<$Res> {
  __$GetLessonItemsCopyWithImpl(
      _GetLessonItems _value, $Res Function(_GetLessonItems) _then)
      : super(_value, (v) => _then(v as _GetLessonItems));

  @override
  _GetLessonItems get _value => super._value as _GetLessonItems;

  @override
  $Res call({
    Object lesson = freezed,
  }) {
    return _then(_GetLessonItems(
      lesson == freezed ? _value.lesson : lesson as Lesson,
    ));
  }

  @override
  $LessonCopyWith<$Res> get lesson {
    if (_value.lesson == null) {
      return null;
    }
    return $LessonCopyWith<$Res>(_value.lesson, (value) {
      return _then(_value.copyWith(lesson: value));
    });
  }
}

/// @nodoc
class _$_GetLessonItems implements _GetLessonItems {
  const _$_GetLessonItems(this.lesson) : assert(lesson != null);

  @override
  final Lesson lesson;

  @override
  String toString() {
    return 'LessonItemsEvent.getLessonItems(lesson: $lesson)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetLessonItems &&
            (identical(other.lesson, lesson) ||
                const DeepCollectionEquality().equals(other.lesson, lesson)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lesson);

  @JsonKey(ignore: true)
  @override
  _$GetLessonItemsCopyWith<_GetLessonItems> get copyWith =>
      __$GetLessonItemsCopyWithImpl<_GetLessonItems>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getLessonItems(Lesson lesson),
    @required TResult setLessonItems(List<LessonItem> lessonItems),
  }) {
    assert(getLessonItems != null);
    assert(setLessonItems != null);
    return getLessonItems(lesson);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getLessonItems(Lesson lesson),
    TResult setLessonItems(List<LessonItem> lessonItems),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getLessonItems != null) {
      return getLessonItems(lesson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getLessonItems(_GetLessonItems value),
    @required TResult setLessonItems(_SetLessonItems value),
  }) {
    assert(getLessonItems != null);
    assert(setLessonItems != null);
    return getLessonItems(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getLessonItems(_GetLessonItems value),
    TResult setLessonItems(_SetLessonItems value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getLessonItems != null) {
      return getLessonItems(this);
    }
    return orElse();
  }
}

abstract class _GetLessonItems implements LessonItemsEvent {
  const factory _GetLessonItems(Lesson lesson) = _$_GetLessonItems;

  Lesson get lesson;
  @JsonKey(ignore: true)
  _$GetLessonItemsCopyWith<_GetLessonItems> get copyWith;
}

/// @nodoc
abstract class _$SetLessonItemsCopyWith<$Res> {
  factory _$SetLessonItemsCopyWith(
          _SetLessonItems value, $Res Function(_SetLessonItems) then) =
      __$SetLessonItemsCopyWithImpl<$Res>;
  $Res call({List<LessonItem> lessonItems});
}

/// @nodoc
class __$SetLessonItemsCopyWithImpl<$Res>
    extends _$LessonItemsEventCopyWithImpl<$Res>
    implements _$SetLessonItemsCopyWith<$Res> {
  __$SetLessonItemsCopyWithImpl(
      _SetLessonItems _value, $Res Function(_SetLessonItems) _then)
      : super(_value, (v) => _then(v as _SetLessonItems));

  @override
  _SetLessonItems get _value => super._value as _SetLessonItems;

  @override
  $Res call({
    Object lessonItems = freezed,
  }) {
    return _then(_SetLessonItems(
      lessonItems == freezed
          ? _value.lessonItems
          : lessonItems as List<LessonItem>,
    ));
  }
}

/// @nodoc
class _$_SetLessonItems implements _SetLessonItems {
  const _$_SetLessonItems(this.lessonItems) : assert(lessonItems != null);

  @override
  final List<LessonItem> lessonItems;

  @override
  String toString() {
    return 'LessonItemsEvent.setLessonItems(lessonItems: $lessonItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetLessonItems &&
            (identical(other.lessonItems, lessonItems) ||
                const DeepCollectionEquality()
                    .equals(other.lessonItems, lessonItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lessonItems);

  @JsonKey(ignore: true)
  @override
  _$SetLessonItemsCopyWith<_SetLessonItems> get copyWith =>
      __$SetLessonItemsCopyWithImpl<_SetLessonItems>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getLessonItems(Lesson lesson),
    @required TResult setLessonItems(List<LessonItem> lessonItems),
  }) {
    assert(getLessonItems != null);
    assert(setLessonItems != null);
    return setLessonItems(lessonItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getLessonItems(Lesson lesson),
    TResult setLessonItems(List<LessonItem> lessonItems),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setLessonItems != null) {
      return setLessonItems(lessonItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getLessonItems(_GetLessonItems value),
    @required TResult setLessonItems(_SetLessonItems value),
  }) {
    assert(getLessonItems != null);
    assert(setLessonItems != null);
    return setLessonItems(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getLessonItems(_GetLessonItems value),
    TResult setLessonItems(_SetLessonItems value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setLessonItems != null) {
      return setLessonItems(this);
    }
    return orElse();
  }
}

abstract class _SetLessonItems implements LessonItemsEvent {
  const factory _SetLessonItems(List<LessonItem> lessonItems) =
      _$_SetLessonItems;

  List<LessonItem> get lessonItems;
  @JsonKey(ignore: true)
  _$SetLessonItemsCopyWith<_SetLessonItems> get copyWith;
}

/// @nodoc
class _$LessonItemsStateTearOff {
  const _$LessonItemsStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success(List<LessonItem> lessonItems) {
    return _Success(
      lessonItems,
    );
  }

// ignore: unused_element
  _Error error() {
    return const _Error();
  }
}

/// @nodoc
// ignore: unused_element
const $LessonItemsState = _$LessonItemsStateTearOff();

/// @nodoc
mixin _$LessonItemsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(List<LessonItem> lessonItems),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(List<LessonItem> lessonItems),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult error(_Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LessonItemsStateCopyWith<$Res> {
  factory $LessonItemsStateCopyWith(
          LessonItemsState value, $Res Function(LessonItemsState) then) =
      _$LessonItemsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LessonItemsStateCopyWithImpl<$Res>
    implements $LessonItemsStateCopyWith<$Res> {
  _$LessonItemsStateCopyWithImpl(this._value, this._then);

  final LessonItemsState _value;
  // ignore: unused_field
  final $Res Function(LessonItemsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LessonItemsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LessonItemsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(List<LessonItem> lessonItems),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(List<LessonItem> lessonItems),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LessonItemsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$LessonItemsStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'LessonItemsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(List<LessonItem> lessonItems),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(List<LessonItem> lessonItems),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LessonItemsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({List<LessonItem> lessonItems});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$LessonItemsStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object lessonItems = freezed,
  }) {
    return _then(_Success(
      lessonItems == freezed
          ? _value.lessonItems
          : lessonItems as List<LessonItem>,
    ));
  }
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success(this.lessonItems) : assert(lessonItems != null);

  @override
  final List<LessonItem> lessonItems;

  @override
  String toString() {
    return 'LessonItemsState.success(lessonItems: $lessonItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.lessonItems, lessonItems) ||
                const DeepCollectionEquality()
                    .equals(other.lessonItems, lessonItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lessonItems);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(List<LessonItem> lessonItems),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(lessonItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(List<LessonItem> lessonItems),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(lessonItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LessonItemsState {
  const factory _Success(List<LessonItem> lessonItems) = _$_Success;

  List<LessonItem> get lessonItems;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$LessonItemsStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'LessonItemsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(List<LessonItem> lessonItems),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(List<LessonItem> lessonItems),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LessonItemsState {
  const factory _Error() = _$_Error;
}
