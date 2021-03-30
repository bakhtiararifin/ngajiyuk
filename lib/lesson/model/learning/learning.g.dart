// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Learning _$_$_LearningFromJson(Map<String, dynamic> json) {
  return _$_Learning(
    json['id'] as String,
    json['userId'] as String,
    json['userName'] as String,
    json['userEmail'] as String,
    json['lessonId'] as String,
    json['lessonTitle'] as String,
  );
}

Map<String, dynamic> _$_$_LearningToJson(_$_Learning instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'userName': instance.userName,
      'userEmail': instance.userEmail,
      'lessonId': instance.lessonId,
      'lessonTitle': instance.lessonTitle,
    };
