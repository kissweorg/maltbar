// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Me _$MeFromJson(Map<String, dynamic> json) => Me(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$MeToJson(Me instance) => <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'token': instance.token,
    };
