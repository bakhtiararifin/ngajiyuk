// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Learning _$_$_LearningFromJson(Map<String, dynamic> json) {
  return _$_Learning(
    id: json['id'] as String?,
    userId: json['userId'] as String?,
    userName: json['userName'] as String?,
    userEmail: json['userEmail'] as String?,
    lessonId: json['lessonId'] as String?,
    lessonTitle: json['lessonTitle'] as String?,
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
