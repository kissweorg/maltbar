import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kisswe/models/post.dart';
import 'package:kisswe/provider/post/post_domain.dart';
import 'package:kisswe/provider/post/post_state.dart';
import 'package:kisswe/provider/providers.dart';

class PostNotifier extends StateNotifier<PostState> {
  final Reader read;
  PostNotifier({required this.read, required state}) : super(state);

  // TODO: Cache posts
  Future<void> fetchPosts() async {
    state = PostState.fetching();
    try {
      final response = await read(apiClientProvider).get("/v1/posts");
      final posts =
          (response.data as List).map((json) => Post.fromJson(json)).toList();

      state = PostState.fetched(posts);
    } catch (e) {
      print(e);
      state = PostState.error();
    }
  }

  Future<void> createPost(CreatePostDto createPostDto) async {
    state = PostState.fetching();
    try {
      await read(apiClientProvider)
          .post("/v1/posts", data: createPostDto.toJson());
    } catch (e) {
      print(e);
      state = PostState.error();
    }
  }
}
