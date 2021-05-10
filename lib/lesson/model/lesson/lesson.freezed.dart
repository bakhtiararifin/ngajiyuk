// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'lesson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lesson _$LessonFromJson(Map<String, dynamic> json) {
  return _Lesson.fromJson(json);
}

/// @nodoc
class _$LessonTearOff {
  const _$LessonTearOff();

  _Lesson call(
      {String? id,
      String? title,
      String? thumbnailUrl,
      String? description,
      String? prerequisite,
      int price = 0,
      int discount = 0,
      bool bought = false,
      bool paid = false}) {
    return _Lesson(
      id: id,
      title: title,
      thumbnailUrl: thumbnailUrl,
      description: description,
      prerequisite: prerequisite,
      price: price,
      discount: discount,
      bought: bought,
      paid: paid,
    );
  }

  Lesson fromJson(Map<String, Object> json) {
    return Lesson.fromJson(json);
  }
}

/// @nodoc
const $Lesson = _$LessonTearOff();

/// @nodoc
mixin _$Lesson {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get prerequisite => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get discount => throw _privateConstructorUsedError;
  bool get bought => throw _privateConstructorUsedError;
  bool get paid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? title,
      String? thumbnailUrl,
      String? description,
      String? prerequisite,
      int price,
      int discount,
      bool bought,
      bool paid});
}

/// @nodoc
class _$LessonCopyWithImpl<$Res> implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  final Lesson _value;
  // ignore: unused_field
  final $Res Function(Lesson) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? thumbnailUrl = freezed,
    Object? description = freezed,
    Object? prerequisite = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? bought = freezed,
    Object? paid = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      prerequisite: prerequisite == freezed
          ? _value.prerequisite
          : prerequisite // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      bought: bought == freezed
          ? _value.bought
          : bought // ignore: cast_nullable_to_non_nullable
              as bool,
      paid: paid == freezed
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LessonCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$LessonCopyWith(_Lesson value, $Res Function(_Lesson) then) =
      __$LessonCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? title,
      String? thumbnailUrl,
      String? description,
      String? prerequisite,
      int price,
      int discount,
      bool bought,
      bool paid});
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
    Object? id = freezed,
    Object? title = freezed,
    Object? thumbnailUrl = freezed,
    Object? description = freezed,
    Object? prerequisite = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? bought = freezed,
    Object? paid = freezed,
  }) {
    return _then(_Lesson(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      prerequisite: prerequisite == freezed
          ? _value.prerequisite
          : prerequisite // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      bought: bought == freezed
          ? _value.bought
          : bought // ignore: cast_nullable_to_non_nullable
              as bool,
      paid: paid == freezed
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Lesson extends _Lesson {
  _$_Lesson(
      {this.id,
      this.title,
      this.thumbnailUrl,
      this.description,
      this.prerequisite,
      this.price = 0,
      this.discount = 0,
      this.bought = false,
      this.paid = false})
      : super._();

  factory _$_Lesson.fromJson(Map<String, dynamic> json) =>
      _$_$_LessonFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? thumbnailUrl;
  @override
  final String? description;
  @override
  final String? prerequisite;
  @JsonKey(defaultValue: 0)
  @override
  final int price;
  @JsonKey(defaultValue: 0)
  @override
  final int discount;
  @JsonKey(defaultValue: false)
  @override
  final bool bought;
  @JsonKey(defaultValue: false)
  @override
  final bool paid;

  @override
  String toString() {
    return 'Lesson(id: $id, title: $title, thumbnailUrl: $thumbnailUrl, description: $description, prerequisite: $prerequisite, price: $price, discount: $discount, bought: $bought, paid: $paid)';
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
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.prerequisite, prerequisite) ||
                const DeepCollectionEquality()
                    .equals(other.prerequisite, prerequisite)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.bought, bought) ||
                const DeepCollectionEquality().equals(other.bought, bought)) &&
            (identical(other.paid, paid) ||
                const DeepCollectionEquality().equals(other.paid, paid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(prerequisite) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(bought) ^
      const DeepCollectionEquality().hash(paid);

  @JsonKey(ignore: true)
  @override
  _$LessonCopyWith<_Lesson> get copyWith =>
      __$LessonCopyWithImpl<_Lesson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LessonToJson(this);
  }
}

abstract class _Lesson extends Lesson {
  factory _Lesson(
      {String? id,
      String? title,
      String? thumbnailUrl,
      String? description,
      String? prerequisite,
      int price,
      int discount,
      bool bought,
      bool paid}) = _$_Lesson;
  _Lesson._() : super._();

  factory _Lesson.fromJson(Map<String, dynamic> json) = _$_Lesson.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get prerequisite => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  int get discount => throw _privateConstructorUsedError;
  @override
  bool get bought => throw _privateConstructorUsedError;
  @override
  bool get paid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LessonCopyWith<_Lesson> get copyWith => throw _privateConstructorUsedError;
}
