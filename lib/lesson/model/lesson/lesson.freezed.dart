// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lesson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Lesson _$LessonFromJson(Map<String, dynamic> json) {
  return _Lesson.fromJson(json);
}

/// @nodoc
class _$LessonTearOff {
  const _$LessonTearOff();

// ignore: unused_element
  _Lesson call(
      {String id, String title, String thumbnailUrl, bool watched = false}) {
    return _Lesson(
      id: id,
      title: title,
      thumbnailUrl: thumbnailUrl,
      watched: watched,
    );
  }

// ignore: unused_element
  Lesson fromJson(Map<String, Object> json) {
    return Lesson.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Lesson = _$LessonTearOff();

/// @nodoc
mixin _$Lesson {
  String get id;
  String get title;
  String get thumbnailUrl;
  bool get watched;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LessonCopyWith<Lesson> get copyWith;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res>;
  $Res call({String id, String title, String thumbnailUrl, bool watched});
}

/// @nodoc
class _$LessonCopyWithImpl<$Res> implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  final Lesson _value;
  // ignore: unused_field
  final $Res Function(Lesson) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object thumbnailUrl = freezed,
    Object watched = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl as String,
      watched: watched == freezed ? _value.watched : watched as bool,
    ));
  }
}

/// @nodoc
abstract class _$LessonCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$LessonCopyWith(_Lesson value, $Res Function(_Lesson) then) =
      __$LessonCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String thumbnailUrl, bool watched});
}

/// @nodoc
class __$LessonCopyWithImpl<$Res> extends _$LessonCopyWithImpl<$Res>
    implements _$LessonCopyWith<$Res> {
  __$LessonCopyWithImpl(_Lesson _value, $Res Function(_Lesson) _then)
      : super(_value, (v) => _then(v as _Lesson));

  @override
  _Lesson get _value => super._value as _Lesson;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object thumbnailUrl = freezed,
    Object watched = freezed,
  }) {
    return _then(_Lesson(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl as String,
      watched: watched == freezed ? _value.watched : watched as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Lesson implements _Lesson {
  _$_Lesson({this.id, this.title, this.thumbnailUrl, this.watched = false})
      : assert(watched != null);

  factory _$_Lesson.fromJson(Map<String, dynamic> json) =>
      _$_$_LessonFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String thumbnailUrl;
  @JsonKey(defaultValue: false)
  @override
  final bool watched;

  @override
  String toString() {
    return 'Lesson(id: $id, title: $title, thumbnailUrl: $thumbnailUrl, watched: $watched)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Lesson &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)) &&
            (identical(other.watched, watched) ||
                const DeepCollectionEquality().equals(other.watched, watched)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(watched);

  @JsonKey(ignore: true)
  @override
  _$LessonCopyWith<_Lesson> get copyWith =>
      __$LessonCopyWithImpl<_Lesson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LessonToJson(this);
  }
}

abstract class _Lesson implements Lesson {
  factory _Lesson(
      {String id, String title, String thumbnailUrl, bool watched}) = _$_Lesson;

  factory _Lesson.fromJson(Map<String, dynamic> json) = _$_Lesson.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get thumbnailUrl;
  @override
  bool get watched;
  @override
  @JsonKey(ignore: true)
  _$LessonCopyWith<_Lesson> get copyWith;
}
