// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'lesson_items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LessonItemsEventTearOff {
  const _$LessonItemsEventTearOff();

  _GetLessonItems getLessonItems() {
    return const _GetLessonItems();
  }

  _SetLessonItems setLessonItems(List<LessonItem> lessonItems) {
    return _SetLessonItems(
      lessonItems,
    );
  }
}

/// @nodoc
const $LessonItemsEvent = _$LessonItemsEventTearOff();

/// @nodoc
mixin _$LessonItemsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLessonItems,
    required TResult Function(List<LessonItem> lessonItems) setLessonItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLessonItems,
    TResult Function(List<LessonItem> lessonItems)? setLessonItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLessonItems value) getLessonItems,
    required TResult Function(_SetLessonItems value) setLessonItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLessonItems value)? getLessonItems,
    TResult Function(_SetLessonItems value)? setLessonItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
}

/// @nodoc
class _$_GetLessonItems implements _GetLessonItems {
  const _$_GetLessonItems();

  @override
  String toString() {
    return 'LessonItemsEvent.getLessonItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetLessonItems);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLessonItems,
    required TResult Function(List<LessonItem> lessonItems) setLessonItems,
  }) {
    return getLessonItems();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLessonItems,
    TResult Function(List<LessonItem> lessonItems)? setLessonItems,
    required TResult orElse(),
  }) {
    if (getLessonItems != null) {
      return getLessonItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLessonItems value) getLessonItems,
    required TResult Function(_SetLessonItems value) setLessonItems,
  }) {
    return getLessonItems(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLessonItems value)? getLessonItems,
    TResult Function(_SetLessonItems value)? setLessonItems,
    required TResult orElse(),
  }) {
    if (getLessonItems != null) {
      return getLessonItems(this);
    }
    return orElse();
  }
}

abstract class _GetLessonItems implements LessonItemsEvent {
  const factory _GetLessonItems() = _$_GetLessonItems;
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
    Object? lessonItems = freezed,
  }) {
    return _then(_SetLessonItems(
      lessonItems == freezed
          ? _value.lessonItems
          : lessonItems // ignore: cast_nullable_to_non_nullable
              as List<LessonItem>,
    ));
  }
}

/// @nodoc
class _$_SetLessonItems implements _SetLessonItems {
  const _$_SetLessonItems(this.lessonItems);

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
  TResult when<TResult extends Object?>({
    required TResult Function() getLessonItems,
    required TResult Function(List<LessonItem> lessonItems) setLessonItems,
  }) {
    return setLessonItems(lessonItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLessonItems,
    TResult Function(List<LessonItem> lessonItems)? setLessonItems,
    required TResult orElse(),
  }) {
    if (setLessonItems != null) {
      return setLessonItems(lessonItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLessonItems value) getLessonItems,
    required TResult Function(_SetLessonItems value) setLessonItems,
  }) {
    return setLessonItems(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLessonItems value)? getLessonItems,
    TResult Function(_SetLessonItems value)? setLessonItems,
    required TResult orElse(),
  }) {
    if (setLessonItems != null) {
      return setLessonItems(this);
    }
    return orElse();
  }
}

abstract class _SetLessonItems implements LessonItemsEvent {
  const factory _SetLessonItems(List<LessonItem> lessonItems) =
      _$_SetLessonItems;

  List<LessonItem> get lessonItems => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetLessonItemsCopyWith<_SetLessonItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LessonItemsStateTearOff {
  const _$LessonItemsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Success success(List<LessonItem> lessonItems) {
    return _Success(
      lessonItems,
    );
  }

  _Error error() {
    return const _Error();
  }
}

/// @nodoc
const $LessonItemsState = _$LessonItemsStateTearOff();

/// @nodoc
mixin _$LessonItemsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LessonItem> lessonItems) success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LessonItem> lessonItems)? success,
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LessonItem> lessonItems) success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LessonItem> lessonItems)? success,
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LessonItem> lessonItems) success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LessonItem> lessonItems)? success,
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
    Object? lessonItems = freezed,
  }) {
    return _then(_Success(
      lessonItems == freezed
          ? _value.lessonItems
          : lessonItems // ignore: cast_nullable_to_non_nullable
              as List<LessonItem>,
    ));
  }
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success(this.lessonItems);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LessonItem> lessonItems) success,
    required TResult Function() error,
  }) {
    return success(lessonItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LessonItem> lessonItems)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(lessonItems);
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

abstract class _Success implements LessonItemsState {
  const factory _Success(List<LessonItem> lessonItems) = _$_Success;

  List<LessonItem> get lessonItems => throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LessonItem> lessonItems) success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LessonItem> lessonItems)? success,
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

abstract class _Error implements LessonItemsState {
  const factory _Error() = _$_Error;
}
