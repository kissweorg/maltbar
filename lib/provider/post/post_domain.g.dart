// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePostDto _$CreatePostDtoFromJson(Map<String, dynamic> json) =>
    CreatePostDto(
      topic: json['topic'] as String,
      content: json['content'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$CreatePostDtoToJson(CreatePostDto instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'content': instance.content,
      'imageUrl': instance.imageUrl,
    };
