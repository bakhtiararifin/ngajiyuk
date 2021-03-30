// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'learning.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Learning _$LearningFromJson(Map<String, dynamic> json) {
  return _Learning.fromJson(json);
}

/// @nodoc
class _$LearningTearOff {
  const _$LearningTearOff();

// ignore: unused_element
  _Learning call(
      {String id,
      String userId,
      String userName,
      String userEmail,
      String lessonId,
      String lessonTitle}) {
    return _Learning(
      id: id,
      userId: userId,
      userName: userName,
      userEmail: userEmail,
      lessonId: lessonId,
      lessonTitle: lessonTitle,
    );
  }

// ignore: unused_element
  Learning fromJson(Map<String, Object> json) {
    return Learning.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Learning = _$LearningTearOff();

/// @nodoc
mixin _$Learning {
  String get id;
  String get userId;
  String get userName;
  String get userEmail;
  String get lessonId;
  String get lessonTitle;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LearningCopyWith<Learning> get copyWith;
}

/// @nodoc
abstract class $LearningCopyWith<$Res> {
  factory $LearningCopyWith(Learning value, $Res Function(Learning) then) =
      _$LearningCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String userId,
      String userName,
      String userEmail,
      String lessonId,
      String lessonTitle});
}

/// @nodoc
class _$LearningCopyWithImpl<$Res> implements $LearningCopyWith<$Res> {
  _$LearningCopyWithImpl(this._value, this._then);

  final Learning _value;
  // ignore: unused_field
  final $Res Function(Learning) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object userName = freezed,
    Object userEmail = freezed,
    Object lessonId = freezed,
    Object lessonTitle = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      userName: userName == freezed ? _value.userName : userName as String,
      userEmail: userEmail == freezed ? _value.userEmail : userEmail as String,
      lessonId: lessonId == freezed ? _value.lessonId : lessonId as String,
      lessonTitle:
          lessonTitle == freezed ? _value.lessonTitle : lessonTitle as String,
    ));
  }
}

/// @nodoc
abstract class _$LearningCopyWith<$Res> implements $LearningCopyWith<$Res> {
  factory _$LearningCopyWith(_Learning value, $Res Function(_Learning) then) =
      __$LearningCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String userId,
      String userName,
      String userEmail,
      String lessonId,
      String lessonTitle});
}

/// @nodoc
class __$LearningCopyWithImpl<$Res> extends _$LearningCopyWithImpl<$Res>
    implements _$LearningCopyWith<$Res> {
  __$LearningCopyWithImpl(_Learning _value, $Res Function(_Learning) _then)
      : super(_value, (v) => _then(v as _Learning));

  @override
  _Learning get _value => super._value as _Learning;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object userName = freezed,
    Object userEmail = freezed,
    Object lessonId = freezed,
    Object lessonTitle = freezed,
  }) {
    return _then(_Learning(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      userName: userName == freezed ? _value.userName : userName as String,
      userEmail: userEmail == freezed ? _value.userEmail : userEmail as String,
      lessonId: lessonId == freezed ? _value.lessonId : lessonId as String,
      lessonTitle:
          lessonTitle == freezed ? _value.lessonTitle : lessonTitle as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Learning implements _Learning {
  _$_Learning(
      {this.id,
      this.userId,
      this.userName,
      this.userEmail,
      this.lessonId,
      this.lessonTitle});

  factory _$_Learning.fromJson(Map<String, dynamic> json) =>
      _$_$_LearningFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String userEmail;
  @override
  final String lessonId;
  @override
  final String lessonTitle;

  @override
  String toString() {
    return 'Learning(id: $id, userId: $userId, userName: $userName, userEmail: $userEmail, lessonId: $lessonId, lessonTitle: $lessonTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Learning &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality()
                    .equals(other.userEmail, userEmail)) &&
            (identical(other.lessonId, lessonId) ||
                const DeepCollectionEquality()
                    .equals(other.lessonId, lessonId)) &&
            (identical(other.lessonTitle, lessonTitle) ||
                const DeepCollectionEquality()
                    .equals(other.lessonTitle, lessonTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userEmail) ^
      const DeepCollectionEquality().hash(lessonId) ^
      const DeepCollectionEquality().hash(lessonTitle);

  @JsonKey(ignore: true)
  @override
  _$LearningCopyWith<_Learning> get copyWith =>
      __$LearningCopyWithImpl<_Learning>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LearningToJson(this);
  }
}

abstract class _Learning implements Learning {
  factory _Learning(
      {String id,
      String userId,
      String userName,
      String userEmail,
      String lessonId,
      String lessonTitle}) = _$_Learning;

  factory _Learning.fromJson(Map<String, dynamic> json) = _$_Learning.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String get userEmail;
  @override
  String get lessonId;
  @override
  String get lessonTitle;
  @override
  @JsonKey(ignore: true)
  _$LearningCopyWith<_Learning> get copyWith;
}
