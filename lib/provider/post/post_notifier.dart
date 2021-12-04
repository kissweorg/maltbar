import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maltbar/models/post.dart';
import 'package:maltbar/provider/post/post_state.dart';
import 'package:maltbar/provider/providers.dart';

class PostNotifier extends StateNotifier<PostState> {
  final Reader read;
  PostNotifier({required this.read, required state}) : super(state) {
    fetchPosts();
  }

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
}
