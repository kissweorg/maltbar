import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  final int id;
  final String topic;
  final String content;
  final String? thumbnailUrl;
  final String? imageUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final User user;
  final List<Comment> comments;

  Post({
    required this.id,
    required this.topic,
    required this.content,
    required this.thumbnailUrl,
    required this.imageUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
    required this.comments,
  });

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

@JsonSerializable()
class User {
  final int id;
  final String nickname;

  User({
    required this.id,
    required this.nickname,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Comment {
  final int id;
  final String content;
  final DateTime createdAt;

  Comment({
    required this.id,
    required this.content,
    required this.createdAt,
  });

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
  Map<String, dynamic> toJson() => _$CommentToJson(this);
}
