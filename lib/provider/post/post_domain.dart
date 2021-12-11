import 'package:json_annotation/json_annotation.dart';

part 'post_domain.g.dart';

@JsonSerializable()
class CreatePostDto {
  final String topic;
  final String content;
  final String? imageUrl;

  CreatePostDto({required this.topic, required this.content, this.imageUrl});
  factory CreatePostDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePostDtoFromJson(json);
  Map<String, dynamic> toJson() => _$CreatePostDtoToJson(this);
}
