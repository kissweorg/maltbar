import 'package:freezed_annotation/freezed_annotation.dart';

part 'me.g.dart';

@JsonSerializable()
class Me {
  final int id;
  final String nickname;
  final String token;

  Me({required this.id, required this.nickname, required this.token});

  factory Me.fromJson(Map<String, dynamic> json) => _$MeFromJson(json);
  Map<String, dynamic> toJson() => _$MeToJson(this);
}
