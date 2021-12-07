import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  final int id;
  final int userId;
  final String topic;
  final String content;
  final String? thumbnailUrl;
  final String? imageUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final PostUser user;

  Post(this.id, this.userId, this.topic, this.content, this.thumbnailUrl,
      this.imageUrl, this.createdAt, this.updatedAt, this.user);

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}

@JsonSerializable()
class PostUser {
  final int id;
  final String nickname;

  PostUser(this.id, this.nickname);

  factory PostUser.fromJson(Map<String, dynamic> json) =>
      _$PostUserFromJson(json);
  Map<String, dynamic> toJson() => _$PostUserToJson(this);
}
