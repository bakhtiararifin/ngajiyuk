// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LessonItem _$_$_LessonItemFromJson(Map<String, dynamic> json) {
  return _$_LessonItem(
    id: json['id'] as String?,
    title: json['title'] as String?,
    youtubeId: json['youtubeId'] as String?,
    watched: json['watched'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_LessonItemToJson(_$_LessonItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'youtubeId': instance.youtubeId,
      'watched': instance.watched,
    };
