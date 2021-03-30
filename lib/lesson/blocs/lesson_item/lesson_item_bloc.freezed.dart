// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lesson_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LessonItemEventTearOff {
  const _$LessonItemEventTearOff();

// ignore: unused_element
  _SetLessonItem setLessonItem(LessonItem lessonItem) {
    return _SetLessonItem(
      lessonItem,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LessonItemEvent = _$LessonItemEventTearOff();

/// @nodoc
mixin _$LessonItemEvent {
  LessonItem get lessonItem;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setLessonItem(LessonItem lessonItem),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setLessonItem(LessonItem lessonItem),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setLessonItem(_SetLessonItem value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setLessonItem(_SetLessonItem value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $LessonItemEventCopyWith<LessonItemEvent> get copyWith;
}

/// @nodoc
abstract class $LessonItemEventCopyWith<$Res> {
  factory $LessonItemEventCopyWith(
          LessonItemEvent value, $Res Function(LessonItemEvent) then) =
      _$LessonItemEventCopyWithImpl<$Res>;
  $Res call({LessonItem lessonItem});

  $LessonItemCopyWith<$Res> get lessonItem;
}

/// @nodoc
class _$LessonItemEventCopyWithImpl<$Res>
    implements $LessonItemEventCopyWith<$Res> {
  _$LessonItemEventCopyWithImpl(this._value, this._then);

  final LessonItemEvent _value;
  // ignore: unused_field
  final $Res Function(LessonItemEvent) _then;

  @override
  $Res call({
    Object lessonItem = freezed,
  }) {
    return _then(_value.copyWith(
      lessonItem:
          lessonItem == freezed ? _value.lessonItem : lessonItem as LessonItem,
    ));
  }

  @override
  $LessonItemCopyWith<$Res> get lessonItem {
    if (_value.lessonItem == null) {
      return null;
    }
    return $LessonItemCopyWith<$Res>(_value.lessonItem, (value) {
      return _then(_value.copyWith(lessonItem: value));
    });
  }
}

/// @nodoc
abstract class _$SetLessonItemCopyWith<$Res>
    implements $LessonItemEventCopyWith<$Res> {
  factory _$SetLessonItemCopyWith(
          _SetLessonItem value, $Res Function(_SetLessonItem) then) =
      __$SetLessonItemCopyWithImpl<$Res>;
  @override
  $Res call({LessonItem lessonItem});

  @override
  $LessonItemCopyWith<$Res> get lessonItem;
}

/// @nodoc
class __$SetLessonItemCopyWithImpl<$Res>
    extends _$LessonItemEventCopyWithImpl<$Res>
    implements _$SetLessonItemCopyWith<$Res> {
  __$SetLessonItemCopyWithImpl(
      _SetLessonItem _value, $Res Function(_SetLessonItem) _then)
      : super(_value, (v) => _then(v as _SetLessonItem));

  @override
  _SetLessonItem get _value => super._value as _SetLessonItem;

  @override
  $Res call({
    Object lessonItem = freezed,
  }) {
    return _then(_SetLessonItem(
      lessonItem == freezed ? _value.lessonItem : lessonItem as LessonItem,
    ));
  }
}

/// @nodoc
class _$_SetLessonItem implements _SetLessonItem {
  const _$_SetLessonItem(this.lessonItem) : assert(lessonItem != null);

  @override
  final LessonItem lessonItem;

  @override
  String toString() {
    return 'LessonItemEvent.setLessonItem(lessonItem: $lessonItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetLessonItem &&
            (identical(other.lessonItem, lessonItem) ||
                const DeepCollectionEquality()
                    .equals(other.lessonItem, lessonItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lessonItem);

  @JsonKey(ignore: true)
  @override
  _$SetLessonItemCopyWith<_SetLessonItem> get copyWith =>
      __$SetLessonItemCopyWithImpl<_SetLessonItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setLessonItem(LessonItem lessonItem),
  }) {
    assert(setLessonItem != null);
    return setLessonItem(lessonItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setLessonItem(LessonItem lessonItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setLessonItem != null) {
      return setLessonItem(lessonItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setLessonItem(_SetLessonItem value),
  }) {
    assert(setLessonItem != null);
    return setLessonItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setLessonItem(_SetLessonItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setLessonItem != null) {
      return setLessonItem(this);
    }
    return orElse();
  }
}

abstract class _SetLessonItem implements LessonItemEvent {
  const factory _SetLessonItem(LessonItem lessonItem) = _$_SetLessonItem;

  @override
  LessonItem get lessonItem;
  @override
  @JsonKey(ignore: true)
  _$SetLessonItemCopyWith<_SetLessonItem> get copyWith;
}

/// @nodoc
class _$LessonItemStateTearOff {
  const _$LessonItemStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success(LessonItem lessonItem) {
    return _Success(
      lessonItem,
    );
  }

// ignore: unused_element
  _Error error() {
    return const _Error();
  }
}

/// @nodoc
// ignore: unused_element
const $LessonItemState = _$LessonItemStateTearOff();

/// @nodoc
mixin _$LessonItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(LessonItem lessonItem),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(LessonItem lessonItem),
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
abstract class $LessonItemStateCopyWith<$Res> {
  factory $LessonItemStateCopyWith(
          LessonItemState value, $Res Function(LessonItemState) then) =
      _$LessonItemStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LessonItemStateCopyWithImpl<$Res>
    implements $LessonItemStateCopyWith<$Res> {
  _$LessonItemStateCopyWithImpl(this._value, this._then);

  final LessonItemState _value;
  // ignore: unused_field
  final $Res Function(LessonItemState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LessonItemStateCopyWithImpl<$Res>
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
    return 'LessonItemState.initial()';
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
    @required TResult success(LessonItem lessonItem),
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
    TResult success(LessonItem lessonItem),
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

abstract class _Initial implements LessonItemState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$LessonItemStateCopyWithImpl<$Res>
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
    return 'LessonItemState.loading()';
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
    @required TResult success(LessonItem lessonItem),
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
    TResult success(LessonItem lessonItem),
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

abstract class _Loading implements LessonItemState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({LessonItem lessonItem});

  $LessonItemCopyWith<$Res> get lessonItem;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$LessonItemStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object lessonItem = freezed,
  }) {
    return _then(_Success(
      lessonItem == freezed ? _value.lessonItem : lessonItem as LessonItem,
    ));
  }

  @override
  $LessonItemCopyWith<$Res> get lessonItem {
    if (_value.lessonItem == null) {
      return null;
    }
    return $LessonItemCopyWith<$Res>(_value.lessonItem, (value) {
      return _then(_value.copyWith(lessonItem: value));
    });
  }
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success(this.lessonItem) : assert(lessonItem != null);

  @override
  final LessonItem lessonItem;

  @override
  String toString() {
    return 'LessonItemState.success(lessonItem: $lessonItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.lessonItem, lessonItem) ||
                const DeepCollectionEquality()
                    .equals(other.lessonItem, lessonItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lessonItem);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(LessonItem lessonItem),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(lessonItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(LessonItem lessonItem),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(lessonItem);
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

abstract class _Success implements LessonItemState {
  const factory _Success(LessonItem lessonItem) = _$_Success;

  LessonItem get lessonItem;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$LessonItemStateCopyWithImpl<$Res>
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
    return 'LessonItemState.error()';
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
    @required TResult success(LessonItem lessonItem),
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
    TResult success(LessonItem lessonItem),
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

abstract class _Error implements LessonItemState {
  const factory _Error() = _$_Error;
}
