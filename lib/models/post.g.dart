// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      json['id'] as int,
      json['userId'] as int,
      json['topic'] as String,
      json['content'] as String,
      json['thumbnailUrl'] as String?,
      json['imageUrl'] as String?,
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      PostUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'topic': instance.topic,
      'content': instance.content,
      'thumbnailUrl': instance.thumbnailUrl,
      'imageUrl': instance.imageUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
    };

PostUser _$PostUserFromJson(Map<String, dynamic> json) => PostUser(
      json['id'] as int,
      json['nickname'] as String,
    );

Map<String, dynamic> _$PostUserToJson(PostUser instance) => <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
    };
