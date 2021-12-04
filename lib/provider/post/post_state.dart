import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maltbar/models/post.dart';

part 'post_state.freezed.dart';

@freezed
class PostState with _$PostState {
  const factory PostState.fetching() = _PostStateFetching;
  const factory PostState.fetched(List<Post> posts) = _PostStateFetched;
  const factory PostState.selected(Post post) = _PostStateSelected;
  const factory PostState.refreshed() = _PostStateRefreshed;
  const factory PostState.error() = _PostStateError;
}
