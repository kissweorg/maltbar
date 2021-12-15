import 'package:freezed_annotation/freezed_annotation.dart';

part 'me.g.dart';

@JsonSerializable()
class Me {
  final int id;
  final String nickname;
  final String email;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String accessToken;

  Me({
    required this.id,
    required this.email,
    required this.nickname,
    required this.createdAt,
    required this.updatedAt,
    required this.accessToken,
  });

  factory Me.fromJson(Map<String, dynamic> json) => _$MeFromJson(json);
  Map<String, dynamic> toJson() => _$MeToJson(this);
}
