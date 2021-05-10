// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lesson _$_$_LessonFromJson(Map<String, dynamic> json) {
  return _$_Lesson(
    id: json['id'] as String?,
    title: json['title'] as String?,
    thumbnailUrl: json['thumbnailUrl'] as String?,
    description: json['description'] as String?,
    prerequisite: json['prerequisite'] as String?,
    price: json['price'] as int? ?? 0,
    discount: json['discount'] as int? ?? 0,
    bought: json['bought'] as bool? ?? false,
    paid: json['paid'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_LessonToJson(_$_Lesson instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnailUrl': instance.thumbnailUrl,
      'description': instance.description,
      'prerequisite': instance.prerequisite,
      'price': instance.price,
      'discount': instance.discount,
      'bought': instance.bought,
      'paid': instance.paid,
    };
