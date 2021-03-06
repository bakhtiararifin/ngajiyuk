// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'learning_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LearningItem _$LearningItemFromJson(Map<String, dynamic> json) {
  return _LearningItem.fromJson(json);
}

/// @nodoc
class _$LearningItemTearOff {
  const _$LearningItemTearOff();

  _LearningItem call(
      {String? id,
      String? lessonItemId,
      String? lessonItemTitle,
      String? youtubeId}) {
    return _LearningItem(
      id: id,
      lessonItemId: lessonItemId,
      lessonItemTitle: lessonItemTitle,
      youtubeId: youtubeId,
    );
  }

  LearningItem fromJson(Map<String, Object> json) {
    return LearningItem.fromJson(json);
  }
}

/// @nodoc
const $LearningItem = _$LearningItemTearOff();

/// @nodoc
mixin _$LearningItem {
  String? get id => throw _privateConstructorUsedError;
  String? get lessonItemId => throw _privateConstructorUsedError;
  String? get lessonItemTitle => throw _privateConstructorUsedError;
  String? get youtubeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningItemCopyWith<LearningItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningItemCopyWith<$Res> {
  factory $LearningItemCopyWith(
          LearningItem value, $Res Function(LearningItem) then) =
      _$LearningItemCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? lessonItemId,
      String? lessonItemTitle,
      String? youtubeId});
}

/// @nodoc
class _$LearningItemCopyWithImpl<$Res> implements $LearningItemCopyWith<$Res> {
  _$LearningItemCopyWithImpl(this._value, this._then);

  final LearningItem _value;
  // ignore: unused_field
  final $Res Function(LearningItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? lessonItemId = freezed,
    Object? lessonItemTitle = freezed,
    Object? youtubeId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonItemId: lessonItemId == freezed
          ? _value.lessonItemId
          : lessonItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonItemTitle: lessonItemTitle == freezed
          ? _value.lessonItemTitle
          : lessonItemTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: youtubeId == freezed
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LearningItemCopyWith<$Res>
    implements $LearningItemCopyWith<$Res> {
  factory _$LearningItemCopyWith(
          _LearningItem value, $Res Function(_LearningItem) then) =
      __$LearningItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? lessonItemId,
      String? lessonItemTitle,
      String? youtubeId});
}

/// @nodoc
class __$LearningItemCopyWithImpl<$Res> extends _$LearningItemCopyWithImpl<$Res>
    implements _$LearningItemCopyWith<$Res> {
  __$LearningItemCopyWithImpl(
      _LearningItem _value, $Res Function(_LearningItem) _then)
      : super(_value, (v) => _then(v as _LearningItem));

  @override
  _LearningItem get _value => super._value as _LearningItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? lessonItemId = freezed,
    Object? lessonItemTitle = freezed,
    Object? youtubeId = freezed,
  }) {
    return _then(_LearningItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonItemId: lessonItemId == freezed
          ? _value.lessonItemId
          : lessonItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonItemTitle: lessonItemTitle == freezed
          ? _value.lessonItemTitle
          : lessonItemTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: youtubeId == freezed
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LearningItem implements _LearningItem {
  _$_LearningItem(
      {this.id, this.lessonItemId, this.lessonItemTitle, this.youtubeId});

  factory _$_LearningItem.fromJson(Map<String, dynamic> json) =>
      _$_$_LearningItemFromJson(json);

  @override
  final String? id;
  @override
  final String? lessonItemId;
  @override
  final String? lessonItemTitle;
  @override
  final String? youtubeId;

  @override
  String toString() {
    return 'LearningItem(id: $id, lessonItemId: $lessonItemId, lessonItemTitle: $lessonItemTitle, youtubeId: $youtubeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LearningItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lessonItemId, lessonItemId) ||
                const DeepCollectionEquality()
                    .equals(other.lessonItemId, lessonItemId)) &&
            (identical(other.lessonItemTitle, lessonItemTitle) ||
                const DeepCollectionEquality()
                    .equals(other.lessonItemTitle, lessonItemTitle)) &&
            (identical(other.youtubeId, youtubeId) ||
                const DeepCollectionEquality()
                    .equals(other.youtubeId, youtubeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lessonItemId) ^
      const DeepCollectionEquality().hash(lessonItemTitle) ^
      const DeepCollectionEquality().hash(youtubeId);

  @JsonKey(ignore: true)
  @override
  _$LearningItemCopyWith<_LearningItem> get copyWith =>
      __$LearningItemCopyWithImpl<_LearningItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LearningItemToJson(this);
  }
}

abstract class _LearningItem implements LearningItem {
  factory _LearningItem(
      {String? id,
      String? lessonItemId,
      String? lessonItemTitle,
      String? youtubeId}) = _$_LearningItem;

  factory _LearningItem.fromJson(Map<String, dynamic> json) =
      _$_LearningItem.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get lessonItemId => throw _privateConstructorUsedError;
  @override
  String? get lessonItemTitle => throw _privateConstructorUsedError;
  @override
  String? get youtubeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LearningItemCopyWith<_LearningItem> get copyWith =>
      throw _privateConstructorUsedError;
}
