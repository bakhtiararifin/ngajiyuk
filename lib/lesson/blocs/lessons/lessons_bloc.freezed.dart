// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'lessons_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LessonsEventTearOff {
  const _$LessonsEventTearOff();

  _SetLessons getLessons() {
    return const _SetLessons();
  }

  _GetLessons setLessons(List<Lesson> lessons) {
    return _GetLessons(
      lessons,
    );
  }
}

/// @nodoc
const $LessonsEvent = _$LessonsEventTearOff();

/// @nodoc
mixin _$LessonsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLessons,
    required TResult Function(List<Lesson> lessons) setLessons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLessons,
    TResult Function(List<Lesson> lessons)? setLessons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLessons value) getLessons,
    required TResult Function(_GetLessons value) setLessons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLessons value)? getLessons,
    TResult Function(_GetLessons value)? setLessons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonsEventCopyWith<$Res> {
  factory $LessonsEventCopyWith(
          LessonsEvent value, $Res Function(LessonsEvent) then) =
      _$LessonsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LessonsEventCopyWithImpl<$Res> implements $LessonsEventCopyWith<$Res> {
  _$LessonsEventCopyWithImpl(this._value, this._then);

  final LessonsEvent _value;
  // ignore: unused_field
  final $Res Function(LessonsEvent) _then;
}

/// @nodoc
abstract class _$SetLessonsCopyWith<$Res> {
  factory _$SetLessonsCopyWith(
          _SetLessons value, $Res Function(_SetLessons) then) =
      __$SetLessonsCopyWithImpl<$Res>;
}

/// @nodoc
class __$SetLessonsCopyWithImpl<$Res> extends _$LessonsEventCopyWithImpl<$Res>
    implements _$SetLessonsCopyWith<$Res> {
  __$SetLessonsCopyWithImpl(
      _SetLessons _value, $Res Function(_SetLessons) _then)
      : super(_value, (v) => _then(v as _SetLessons));

  @override
  _SetLessons get _value => super._value as _SetLessons;
}

/// @nodoc

class _$_SetLessons implements _SetLessons {
  const _$_SetLessons();

  @override
  String toString() {
    return 'LessonsEvent.getLessons()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SetLessons);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLessons,
    required TResult Function(List<Lesson> lessons) setLessons,
  }) {
    return getLessons();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLessons,
    TResult Function(List<Lesson> lessons)? setLessons,
    required TResult orElse(),
  }) {
    if (getLessons != null) {
      return getLessons();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLessons value) getLessons,
    required TResult Function(_GetLessons value) setLessons,
  }) {
    return getLessons(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLessons value)? getLessons,
    TResult Function(_GetLessons value)? setLessons,
    required TResult orElse(),
  }) {
    if (getLessons != null) {
      return getLessons(this);
    }
    return orElse();
  }
}

abstract class _SetLessons implements LessonsEvent {
  const factory _SetLessons() = _$_SetLessons;
}

/// @nodoc
abstract class _$GetLessonsCopyWith<$Res> {
  factory _$GetLessonsCopyWith(
          _GetLessons value, $Res Function(_GetLessons) then) =
      __$GetLessonsCopyWithImpl<$Res>;
  $Res call({List<Lesson> lessons});
}

/// @nodoc
class __$GetLessonsCopyWithImpl<$Res> extends _$LessonsEventCopyWithImpl<$Res>
    implements _$GetLessonsCopyWith<$Res> {
  __$GetLessonsCopyWithImpl(
      _GetLessons _value, $Res Function(_GetLessons) _then)
      : super(_value, (v) => _then(v as _GetLessons));

  @override
  _GetLessons get _value => super._value as _GetLessons;

  @override
  $Res call({
    Object? lessons = freezed,
  }) {
    return _then(_GetLessons(
      lessons == freezed
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
    ));
  }
}

/// @nodoc

class _$_GetLessons implements _GetLessons {
  const _$_GetLessons(this.lessons);

  @override
  final List<Lesson> lessons;

  @override
  String toString() {
    return 'LessonsEvent.setLessons(lessons: $lessons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetLessons &&
            (identical(other.lessons, lessons) ||
                const DeepCollectionEquality().equals(other.lessons, lessons)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lessons);

  @JsonKey(ignore: true)
  @override
  _$GetLessonsCopyWith<_GetLessons> get copyWith =>
      __$GetLessonsCopyWithImpl<_GetLessons>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLessons,
    required TResult Function(List<Lesson> lessons) setLessons,
  }) {
    return setLessons(lessons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLessons,
    TResult Function(List<Lesson> lessons)? setLessons,
    required TResult orElse(),
  }) {
    if (setLessons != null) {
      return setLessons(lessons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLessons value) getLessons,
    required TResult Function(_GetLessons value) setLessons,
  }) {
    return setLessons(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLessons value)? getLessons,
    TResult Function(_GetLessons value)? setLessons,
    required TResult orElse(),
  }) {
    if (setLessons != null) {
      return setLessons(this);
    }
    return orElse();
  }
}

abstract class _GetLessons implements LessonsEvent {
  const factory _GetLessons(List<Lesson> lessons) = _$_GetLessons;

  List<Lesson> get lessons => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetLessonsCopyWith<_GetLessons> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LessonsStateTearOff {
  const _$LessonsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Success success(List<Lesson> lessons) {
    return _Success(
      lessons,
    );
  }

  _Error error() {
    return const _Error();
  }
}

/// @nodoc
const $LessonsState = _$LessonsStateTearOff();

/// @nodoc
mixin _$LessonsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Lesson> lessons) success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Lesson> lessons)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonsStateCopyWith<$Res> {
  factory $LessonsStateCopyWith(
          LessonsState value, $Res Function(LessonsState) then) =
      _$LessonsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LessonsStateCopyWithImpl<$Res> implements $LessonsStateCopyWith<$Res> {
  _$LessonsStateCopyWithImpl(this._value, this._then);

  final LessonsState _value;
  // ignore: unused_field
  final $Res Function(LessonsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LessonsStateCopyWithImpl<$Res>
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
    return 'LessonsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Lesson> lessons) success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Lesson> lessons)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LessonsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$LessonsStateCopyWithImpl<$Res>
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
    return 'LessonsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Lesson> lessons) success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Lesson> lessons)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LessonsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({List<Lesson> lessons});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$LessonsStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? lessons = freezed,
  }) {
    return _then(_Success(
      lessons == freezed
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.lessons);

  @override
  final List<Lesson> lessons;

  @override
  String toString() {
    return 'LessonsState.success(lessons: $lessons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.lessons, lessons) ||
                const DeepCollectionEquality().equals(other.lessons, lessons)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lessons);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Lesson> lessons) success,
    required TResult Function() error,
  }) {
    return success(lessons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Lesson> lessons)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(lessons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LessonsState {
  const factory _Success(List<Lesson> lessons) = _$_Success;

  List<Lesson> get lessons => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$LessonsStateCopyWithImpl<$Res>
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
    return 'LessonsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Lesson> lessons) success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Lesson> lessons)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LessonsState {
  const factory _Error() = _$_Error;
}
