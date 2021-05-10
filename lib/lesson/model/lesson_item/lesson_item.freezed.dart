// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'lesson_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LessonItem _$LessonItemFromJson(Map<String, dynamic> json) {
  return _LessonItem.fromJson(json);
}

/// @nodoc
class _$LessonItemTearOff {
  const _$LessonItemTearOff();

  _LessonItem call(
      {String? id,
      int? index,
      String? title,
      String? youtubeId,
      String? videoUrl,
      bool watched = false}) {
    return _LessonItem(
      id: id,
      index: index,
      title: title,
      youtubeId: youtubeId,
      videoUrl: videoUrl,
      watched: watched,
    );
  }

  LessonItem fromJson(Map<String, Object> json) {
    return LessonItem.fromJson(json);
  }
}

/// @nodoc
const $LessonItem = _$LessonItemTearOff();

/// @nodoc
mixin _$LessonItem {
  String? get id => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get youtubeId => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  bool get watched => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonItemCopyWith<LessonItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonItemCopyWith<$Res> {
  factory $LessonItemCopyWith(
          LessonItem value, $Res Function(LessonItem) then) =
      _$LessonItemCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      int? index,
      String? title,
      String? youtubeId,
      String? videoUrl,
      bool watched});
}

/// @nodoc
class _$LessonItemCopyWithImpl<$Res> implements $LessonItemCopyWith<$Res> {
  _$LessonItemCopyWithImpl(this._value, this._then);

  final LessonItem _value;
  // ignore: unused_field
  final $Res Function(LessonItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? title = freezed,
    Object? youtubeId = freezed,
    Object? videoUrl = freezed,
    Object? watched = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: youtubeId == freezed
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      watched: watched == freezed
          ? _value.watched
          : watched // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LessonItemCopyWith<$Res> implements $LessonItemCopyWith<$Res> {
  factory _$LessonItemCopyWith(
          _LessonItem value, $Res Function(_LessonItem) then) =
      __$LessonItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      int? index,
      String? title,
      String? youtubeId,
      String? videoUrl,
      bool watched});
}

/// @nodoc
class __$LessonItemCopyWithImpl<$Res> extends _$LessonItemCopyWithImpl<$Res>
    implements _$LessonItemCopyWith<$Res> {
  __$LessonItemCopyWithImpl(
      _LessonItem _value, $Res Function(_LessonItem) _then)
      : super(_value, (v) => _then(v as _LessonItem));

  @override
  _LessonItem get _value => super._value as _LessonItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? title = freezed,
    Object? youtubeId = freezed,
    Object? videoUrl = freezed,
    Object? watched = freezed,
  }) {
    return _then(_LessonItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: youtubeId == freezed
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      watched: watched == freezed
          ? _value.watched
          : watched // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LessonItem extends _LessonItem {
  _$_LessonItem(
      {this.id,
      this.index,
      this.title,
      this.youtubeId,
      this.videoUrl,
      this.watched = false})
      : super._();

  factory _$_LessonItem.fromJson(Map<String, dynamic> json) =>
      _$_$_LessonItemFromJson(json);

  @override
  final String? id;
  @override
  final int? index;
  @override
  final String? title;
  @override
  final String? youtubeId;
  @override
  final String? videoUrl;
  @JsonKey(defaultValue: false)
  @override
  final bool watched;

  @override
  String toString() {
    return 'LessonItem(id: $id, index: $index, title: $title, youtubeId: $youtubeId, videoUrl: $videoUrl, watched: $watched)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LessonItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.youtubeId, youtubeId) ||
                const DeepCollectionEquality()
                    .equals(other.youtubeId, youtubeId)) &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.videoUrl, videoUrl)) &&
            (identical(other.watched, watched) ||
                const DeepCollectionEquality().equals(other.watched, watched)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(youtubeId) ^
      const DeepCollectionEquality().hash(videoUrl) ^
      const DeepCollectionEquality().hash(watched);

  @JsonKey(ignore: true)
  @override
  _$LessonItemCopyWith<_LessonItem> get copyWith =>
      __$LessonItemCopyWithImpl<_LessonItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LessonItemToJson(this);
  }
}

abstract class _LessonItem extends LessonItem {
  factory _LessonItem(
      {String? id,
      int? index,
      String? title,
      String? youtubeId,
      String? videoUrl,
      bool watched}) = _$_LessonItem;
  _LessonItem._() : super._();

  factory _LessonItem.fromJson(Map<String, dynamic> json) =
      _$_LessonItem.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  int? get index => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get youtubeId => throw _privateConstructorUsedError;
  @override
  String? get videoUrl => throw _privateConstructorUsedError;
  @override
  bool get watched => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LessonItemCopyWith<_LessonItem> get copyWith =>
      throw _privateConstructorUsedError;
}
