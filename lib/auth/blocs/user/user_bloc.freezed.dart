// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

  _SetUser setUser(User user) {
    return _SetUser(
      user,
    );
  }

  _ClearUser clearUser() {
    return const _ClearUser();
  }
}

/// @nodoc
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) setUser,
    required TResult Function() clearUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? setUser,
    TResult Function()? clearUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetUser value) setUser,
    required TResult Function(_ClearUser value) clearUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetUser value)? setUser,
    TResult Function(_ClearUser value)? clearUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class _$SetUserCopyWith<$Res> {
  factory _$SetUserCopyWith(_SetUser value, $Res Function(_SetUser) then) =
      __$SetUserCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$SetUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$SetUserCopyWith<$Res> {
  __$SetUserCopyWithImpl(_SetUser _value, $Res Function(_SetUser) _then)
      : super(_value, (v) => _then(v as _SetUser));

  @override
  _SetUser get _value => super._value as _SetUser;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_SetUser(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_SetUser implements _SetUser {
  const _$_SetUser(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserEvent.setUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetUser &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$SetUserCopyWith<_SetUser> get copyWith =>
      __$SetUserCopyWithImpl<_SetUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) setUser,
    required TResult Function() clearUser,
  }) {
    return setUser(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? setUser,
    TResult Function()? clearUser,
    required TResult orElse(),
  }) {
    if (setUser != null) {
      return setUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetUser value) setUser,
    required TResult Function(_ClearUser value) clearUser,
  }) {
    return setUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetUser value)? setUser,
    TResult Function(_ClearUser value)? clearUser,
    required TResult orElse(),
  }) {
    if (setUser != null) {
      return setUser(this);
    }
    return orElse();
  }
}

abstract class _SetUser implements UserEvent {
  const factory _SetUser(User user) = _$_SetUser;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetUserCopyWith<_SetUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClearUserCopyWith<$Res> {
  factory _$ClearUserCopyWith(
          _ClearUser value, $Res Function(_ClearUser) then) =
      __$ClearUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$ClearUserCopyWith<$Res> {
  __$ClearUserCopyWithImpl(_ClearUser _value, $Res Function(_ClearUser) _then)
      : super(_value, (v) => _then(v as _ClearUser));

  @override
  _ClearUser get _value => super._value as _ClearUser;
}

/// @nodoc

class _$_ClearUser implements _ClearUser {
  const _$_ClearUser();

  @override
  String toString() {
    return 'UserEvent.clearUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClearUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) setUser,
    required TResult Function() clearUser,
  }) {
    return clearUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? setUser,
    TResult Function()? clearUser,
    required TResult orElse(),
  }) {
    if (clearUser != null) {
      return clearUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetUser value) setUser,
    required TResult Function(_ClearUser value) clearUser,
  }) {
    return clearUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetUser value)? setUser,
    TResult Function(_ClearUser value)? clearUser,
    required TResult orElse(),
  }) {
    if (clearUser != null) {
      return clearUser(this);
    }
    return orElse();
  }
}

abstract class _ClearUser implements UserEvent {
  const factory _ClearUser() = _$_ClearUser;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Success success(User user) {
    return _Success(
      user,
    );
  }

  _Cleared cleared() {
    return const _Cleared();
  }

  _Error error() {
    return const _Error();
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function() cleared,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? success,
    TResult Function()? cleared,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Cleared value) cleared,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
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
    return 'UserState.initial()';
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
    required TResult Function(User user) success,
    required TResult Function() cleared,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? success,
    TResult Function()? cleared,
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
    required TResult Function(_Cleared value) cleared,
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
    TResult Function(_Cleared value)? cleared,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
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
    return 'UserState.loading()';
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
    required TResult Function(User user) success,
    required TResult Function() cleared,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? success,
    TResult Function()? cleared,
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
    required TResult Function(_Cleared value) cleared,
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
    TResult Function(_Cleared value)? cleared,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Success(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.success(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function() cleared,
    required TResult Function() error,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? success,
    TResult Function()? cleared,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Cleared value) cleared,
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
    TResult Function(_Cleared value)? cleared,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements UserState {
  const factory _Success(User user) = _$_Success;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClearedCopyWith<$Res> {
  factory _$ClearedCopyWith(_Cleared value, $Res Function(_Cleared) then) =
      __$ClearedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearedCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$ClearedCopyWith<$Res> {
  __$ClearedCopyWithImpl(_Cleared _value, $Res Function(_Cleared) _then)
      : super(_value, (v) => _then(v as _Cleared));

  @override
  _Cleared get _value => super._value as _Cleared;
}

/// @nodoc

class _$_Cleared implements _Cleared {
  const _$_Cleared();

  @override
  String toString() {
    return 'UserState.cleared()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Cleared);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function() cleared,
    required TResult Function() error,
  }) {
    return cleared();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? success,
    TResult Function()? cleared,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (cleared != null) {
      return cleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Cleared value) cleared,
    required TResult Function(_Error value) error,
  }) {
    return cleared(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (cleared != null) {
      return cleared(this);
    }
    return orElse();
  }
}

abstract class _Cleared implements UserState {
  const factory _Cleared() = _$_Cleared;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
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
    return 'UserState.error()';
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
    required TResult Function(User user) success,
    required TResult Function() cleared,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? success,
    TResult Function()? cleared,
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
    required TResult Function(_Cleared value) cleared,
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
    TResult Function(_Cleared value)? cleared,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UserState {
  const factory _Error() = _$_Error;
}
