import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  final int id;
  final String userId;
  final String topic;
  final String content;
  final String? thumbnailUrl;
  final String? imageUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Post(this.id, this.userId, this.topic, this.content, this.thumbnailUrl,
      this.imageUrl, this.createdAt, this.updatedAt);

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}
