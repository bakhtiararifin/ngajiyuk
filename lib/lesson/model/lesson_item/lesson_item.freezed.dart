// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lesson_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LessonItem _$LessonItemFromJson(Map<String, dynamic> json) {
  return _LessonItem.fromJson(json);
}

/// @nodoc
class _$LessonItemTearOff {
  const _$LessonItemTearOff();

// ignore: unused_element
  _LessonItem call({String id, String title, String youtubeId}) {
    return _LessonItem(
      id: id,
      title: title,
      youtubeId: youtubeId,
    );
  }

// ignore: unused_element
  LessonItem fromJson(Map<String, Object> json) {
    return LessonItem.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LessonItem = _$LessonItemTearOff();

/// @nodoc
mixin _$LessonItem {
  String get id;
  String get title;
  String get youtubeId;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LessonItemCopyWith<LessonItem> get copyWith;
}

/// @nodoc
abstract class $LessonItemCopyWith<$Res> {
  factory $LessonItemCopyWith(
          LessonItem value, $Res Function(LessonItem) then) =
      _$LessonItemCopyWithImpl<$Res>;
  $Res call({String id, String title, String youtubeId});
}

/// @nodoc
class _$LessonItemCopyWithImpl<$Res> implements $LessonItemCopyWith<$Res> {
  _$LessonItemCopyWithImpl(this._value, this._then);

  final LessonItem _value;
  // ignore: unused_field
  final $Res Function(LessonItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object youtubeId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      youtubeId: youtubeId == freezed ? _value.youtubeId : youtubeId as String,
    ));
  }
}

/// @nodoc
abstract class _$LessonItemCopyWith<$Res> implements $LessonItemCopyWith<$Res> {
  factory _$LessonItemCopyWith(
          _LessonItem value, $Res Function(_LessonItem) then) =
      __$LessonItemCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String youtubeId});
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
    Object id = freezed,
    Object title = freezed,
    Object youtubeId = freezed,
  }) {
    return _then(_LessonItem(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      youtubeId: youtubeId == freezed ? _value.youtubeId : youtubeId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LessonItem implements _LessonItem {
  _$_LessonItem({this.id, this.title, this.youtubeId});

  factory _$_LessonItem.fromJson(Map<String, dynamic> json) =>
      _$_$_LessonItemFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String youtubeId;

  bool _didurl = false;
  dynamic _url;

  @override
  dynamic get url {
    if (_didurl == false) {
      _didurl = true;
      _url = 'https://www.youtube.com/watch?v=$youtubeId';
    }
    return _url;
  }

  bool _didthumbnailUrl = false;
  dynamic _thumbnailUrl;

  @override
  dynamic get thumbnailUrl {
    if (_didthumbnailUrl == false) {
      _didthumbnailUrl = true;
      _thumbnailUrl = 'https://img.youtube.com/vi/$youtubeId/hqdefault.jpg';
    }
    return _thumbnailUrl;
  }

  @override
  String toString() {
    return 'LessonItem(id: $id, title: $title, youtubeId: $youtubeId, url: $url, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LessonItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.youtubeId, youtubeId) ||
                const DeepCollectionEquality()
                    .equals(other.youtubeId, youtubeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(youtubeId);

  @JsonKey(ignore: true)
  @override
  _$LessonItemCopyWith<_LessonItem> get copyWith =>
      __$LessonItemCopyWithImpl<_LessonItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LessonItemToJson(this);
  }
}

abstract class _LessonItem implements LessonItem {
  factory _LessonItem({String id, String title, String youtubeId}) =
      _$_LessonItem;

  factory _LessonItem.fromJson(Map<String, dynamic> json) =
      _$_LessonItem.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get youtubeId;
  @override
  @JsonKey(ignore: true)
  _$LessonItemCopyWith<_LessonItem> get copyWith;
}
